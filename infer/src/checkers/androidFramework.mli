(*
 * Copyright (c) 2013 - present Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 *)

open! IStd

(** Android lifecycle types and their lifecycle methods that are called by the framework *)

val drawable_prefix : string
(** prefix for Drawable fields in generated resources *)

val is_autocloseable : Tenv.t -> Typ.Name.t -> bool

val is_context : Tenv.t -> Typ.Name.t -> bool
(** return true if [typename] <: android.content.Context *)

val is_application : Tenv.t -> Typ.Name.t -> bool
(** return true if [typename] <: android.app.Application *)

val is_activity : Tenv.t -> Typ.Name.t -> bool
(** return true if [typename] <: android.app.Activity *)

val is_view : Tenv.t -> Typ.Name.t -> bool
(** return true if [typename] <: android.view.View *)

val is_fragment : Tenv.t -> Typ.Name.t -> bool

val is_destroy_method : Typ.Procname.t -> bool
(** return true if [procname] is a special lifecycle cleanup method *)

val is_android_lib_class : Typ.Name.t -> bool
(** return true if [class_name] is the name of a class that belong to the Android framework *)
