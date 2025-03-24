#pragma once

#include <memory>
#include "meshaccess.hpp"
#include "fespace.hpp"

namespace ngcomp
{
    struct EnsightPartData
    {
        std::string part_name;

    };
  class EnsightOutput
  {
  protected:
    shared_ptr<MeshAccess> ma = nullptr;
    Array<shared_ptr<CoefficientFunction>> coefs;
    std::map<std::string, int> field_dimensions;

    string case_name;
    string result_folder;  
    std::vector<double> times;
    std::map<std::string, std::vector<int>> part_node_order;

    Array<string> active_regions;

  public:
    EnsightOutput(shared_ptr<MeshAccess>, string result_folder,  string case_name, const  Array<string>& active_regions);
    ~EnsightOutput();

    void finalize();
    void newTimeStep(double time);
    void writeGeometry();
    void writeCaseFile();
    void writeVariable(std::string, shared_ptr<GridFunction>, const Array<string>&);

    void EnsightOutput::writeStringToFile(const char* cstring, FILE* file);
    void EnsightOutput::writeIntToFile(const int i, FILE* file);
    void EnsightOutput::writeFloatToFile(const float i, FILE* file);

  };

}