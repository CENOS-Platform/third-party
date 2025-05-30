// SPDX-FileCopyrightText: Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
// SPDX-License-Identifier: BSD-3-Clause
/**
 * @class   vtkAffineLongLongArray
 * @brief   affine implicit array of long long.
 *
 * vtkAffineLongLongArray is an affine implicit array of values of type long long.
 * see vtkAffineArray, vtkAffineImplicitBackend
 *
 * This file is generated by vtkImplicitArrays.cmake
 */

#ifndef vtkAffineLongLongArray_h
#define vtkAffineLongLongArray_h

#include "vtkAffineArray.h" // Real Superclass
#include "vtkCommonCoreModule.h"     // For export macro
#include "vtkDataArray.h"

// Fake the superclass for the wrappers.
#ifndef __VTK_WRAP__
#define vtkDataArray vtkAffineArray<long long>
#endif
VTK_ABI_NAMESPACE_BEGIN
class VTKCOMMONCORE_EXPORT vtkAffineLongLongArray : public vtkDataArray
{
public:
  vtkImplicitArrayTypeMacro(vtkAffineLongLongArray, vtkDataArray);
#ifndef __VTK_WRAP__
#undef vtkDataArray
#endif

  static vtkAffineLongLongArray* New();
  static vtkAffineLongLongArray* ExtendedNew();
  void PrintSelf(ostream& os, vtkIndent indent) override;

  // This macro expands to the set of method declarations that
  // make up the interface of vtkImplicitArray, which is ignored
  // by the wrappers.
#if defined(__VTK_WRAP__) || defined(__WRAP_GCCXML__)
  vtkCreateReadOnlyWrappedArrayInterface(long long);
#endif

  /**
   * A faster alternative to SafeDownCast for downcasting vtkAbstractArrays.
   */
  static vtkAffineLongLongArray* FastDownCast(vtkAbstractArray* source)
  {
    return static_cast<vtkAffineLongLongArray*>(Superclass::FastDownCast(source));
  }

  /**
   * Set the parameters for the affine backend.
   * slope is the unit variation and intercept is the value at 0.
   * Value at index is:
   *   value = slope * index + intercept
   */
  void ConstructBackend(long long slope, long long intercept);

protected:
  vtkAffineLongLongArray();
  ~vtkAffineLongLongArray() override;

private:
  typedef vtkAffineArray<long long> RealSuperclass;

  vtkAffineLongLongArray(const vtkAffineLongLongArray&) = delete;
  void operator=(const vtkAffineLongLongArray&) = delete;
};

// Define vtkArrayDownCast implementation:
vtkArrayDownCast_FastCastMacro(vtkAffineLongLongArray);

VTK_ABI_NAMESPACE_END
#endif
// VTK-HeaderTest-Exclude: TYPEMACRO
