(* Copyright (C) 2009,2019 Matthew Fluet.
 * Copyright (C) 2002-2007 Henry Cejtin, Matthew Fluet, Suresh
 *    Jagannathan, and Stephen Weeks.
 *
 * MLton is released under a HPND-style license.
 * See the file MLton-LICENSE for details.
 *)

signature IMPLEMENT_PROFILING_STRUCTS = 
   sig
      structure Rssa: RSSA
   end

signature IMPLEMENT_PROFILING = 
   sig
      include IMPLEMENT_PROFILING_STRUCTS

      val doit:
         Rssa.Program.t
         -> Rssa.Program.t * ({frames: unit -> (Rssa.Label.t * int) list}
                              -> Rssa.ProfileInfo.t option)
   end
