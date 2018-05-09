#!/usr/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"

"$1" \
  --view \
  -disable-checker apiModeling.TrustNonnull \
  -disable-checker apiModeling.google.GTest \
  -disable-checker core.CallAndMessage \
  -disable-checker core.DivideZero \
  -disable-checker core.DynamicTypePropagation \
  -disable-checker core.NonNullParamChecker \
  -disable-checker core.NonnilStringConstants \
  -disable-checker core.NullDereference \
  -disable-checker core.StackAddressEscape \
  -disable-checker core.UndefinedBinaryOperatorResult \
  -disable-checker core.VLASize \
  -disable-checker core.builtin.BuiltinFunctions \
  -disable-checker core.builtin.NoReturnFunctions \
  -disable-checker core.uninitialized.ArraySubscript \
  -disable-checker core.uninitialized.Assign \
  -disable-checker core.uninitialized.Branch \
  -disable-checker core.uninitialized.CapturedBlockVariable \
  -disable-checker core.uninitialized.UndefReturn \
  -disable-checker cplusplus.NewDelete \
  -disable-checker cplusplus.NewDeleteLeaks \
  -disable-checker cplusplus.SelfAssignment \
  -disable-checker deadcode.DeadStores \
  -disable-checker nullability.NullPassedToNonnull \
  -disable-checker nullability.NullReturnedFromNonnull \
  -disable-checker security.insecureAPI.UncheckedReturn \
  -disable-checker security.insecureAPI.getpw \
  -disable-checker security.insecureAPI.gets \
  -disable-checker security.insecureAPI.mkstemp \
  -disable-checker security.insecureAPI.mktemp \
  -disable-checker security.insecureAPI.vfork \
  -disable-checker unix.API \
  -disable-checker unix.Malloc \
  -disable-checker unix.MallocSizeof \
  -disable-checker unix.MismatchedDeallocator \
  -disable-checker unix.StdCLibraryFunctions \
  -disable-checker unix.Vfork \
  -disable-checker unix.cstring.BadSizeArg \
  -disable-checker unix.cstring.NullArg \
  -enable-checker security.SecureInformationFlow ./build.sh
