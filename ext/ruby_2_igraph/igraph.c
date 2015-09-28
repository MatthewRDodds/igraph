#include <igraph.h>

//Classes
VALUE cIGraph;
VALUE cIGraphError;

void cIGraph_free(void *p){
  igraph_destroy(p);
  free(p);
}

void cIGraph_mark(void *p){
  rb_gc_mark(((VALUE*)((igraph_t*)p)->attr)[0]);
  rb_gc_mark(((VALUE*)((igraph_t*)p)->attr)[1]);
  rb_gc_mark(((VALUE*)((igraph_t*)p)->attr)[2]);
}

VALUE cIGraph_alloc(VALUE klass){

  igraph_t *graph = malloc(sizeof(igraph_t));
  VALUE obj;

  igraph_empty(graph, 0, 1);

  obj = Data_Wrap_Struct(klass, cIGraph_mark, cIGraph_free, graph);

  return obj;
  
}

VALUE cIGraph_initialize(int argc, VALUE *argv, VALUE self){
  return self;
}

void Init_igraph(){
  cIGraph      = rb_define_class("IGraph",      rb_cObject);
  cIGraphError = rb_define_class("IGraphError", rb_eRuntimeError);

  rb_define_alloc_func(cIGraph, cIGraph_alloc);
  rb_define_method(cIGraph, "initialize", cIGraph_initialize, -1);

  cIGraph_closenessm = rb_define_module_under(cIGraph, "Closeness");
  rb_include_module(cIGraph, cIGraph_closenessm);

  rb_define_method(cIGraph_closenessm, "betweenness", cIGraph_betweenness, 2);
}
