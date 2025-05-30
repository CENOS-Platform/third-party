// SPDX-FileCopyrightText: Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
// SPDX-License-Identifier: BSD-3-Clause
/**
 * @class   vtkConstantFloatArray
 * @brief   constant implicit array of float.
 *
 * vtkConstantFloatArray is a constant implicit array of values of type float.
 * see vtkConstantArray, vtkConstantImplicitBackend
 *
 * This file is generated by vtkImplicitArrays.cmake
 */

#ifndef vtkConstantFloatArray_h
#define vtkConstantFloatArray_h

#include "vtkConstantArray.h" // Real Superclass
#include "vtkCommonCoreModule.h"     // For export macro
#include "vtkDataArray.h"

// Fake the superclass for the wrappers.
#ifndef __VTK_WRAP__
#define vtkDataArray vtkConstantArray<float>
#endif
VTK_ABI_NAMESPACE_BEGIN
class VTKCOMMONCORE_EXPORT vtkConstantFloatArray : public vtkDataArray
{
public:
  vtkImplicitArrayTypeMacro(vtkConstantFloatArray, vtkDataArray);
#ifndef __VTK_WRAP__
#undef vtkDataArray
#endif

  // This macro expands to the set of method declarations that
  // make up the interface of vtkAOSDataArrayTemplate, which is ignored
  // by the wrappers.
#if defined(__VTK_WRAP__) || defined(__WRAP_GCCXML__)
  vtkCreateReadOnlyWrappedArrayInterface(float);
#endif

  static vtkConstantFloatArray* New();
  static vtkConstantFloatArray* ExtendedNew();
  void PrintSelf(ostream& os, vtkIndent indent) override;

  // This macro expands to the set of method declarations that
  // make up the interface of vtkImplicitArray, which is ignored
  // by the wrappers.

  /**
   * A faster alternative to SafeDownCast for downcasting vtkAbstractArrays.
   */
  static vtkConstantFloatArray* FastDownCast(vtkAbstractArray* source)
  {
    return static_cast<vtkConstantFloatArray*>(Superclass::FastDownCast(source));
  }

  /**
   * Set the constant value for this array.
   */
  void ConstructBackend(float value);

protected:
  vtkConstantFloatArray();
  ~vtkConstantFloatArray() override;

private:
  typedef vtkConstantArray<float> RealSuperclass;

  vtkConstantFloatArray(const vtkConstantFloatArray&) = delete;
  void operator=(const vtkConstantFloatArray&) = delete;
};

// Define vtkArrayDownCast implementation:
vtkArrayDownCast_FastCastMacro(vtkConstantFloatArray);

VTK_ABI_NAMESPACE_END
#endif
// VTK-HeaderTest-Exclude: TYPEMACRO
