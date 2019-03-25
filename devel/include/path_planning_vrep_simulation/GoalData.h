// Generated by gencpp from file path_planning_vrep_simulation/GoalData.msg
// DO NOT EDIT!


#ifndef PATH_PLANNING_VREP_SIMULATION_MESSAGE_GOALDATA_H
#define PATH_PLANNING_VREP_SIMULATION_MESSAGE_GOALDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <path_planning_vrep_simulation/Point2d.h>
#include <path_planning_vrep_simulation/Point2d.h>

namespace path_planning_vrep_simulation
{
template <class ContainerAllocator>
struct GoalData_
{
  typedef GoalData_<ContainerAllocator> Type;

  GoalData_()
    : id(0)
    , center()
    , corners()  {
    }
  GoalData_(const ContainerAllocator& _alloc)
    : id(0)
    , center(_alloc)
    , corners(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;

   typedef  ::path_planning_vrep_simulation::Point2d_<ContainerAllocator>  _center_type;
  _center_type center;

   typedef std::vector< ::path_planning_vrep_simulation::Point2d_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::path_planning_vrep_simulation::Point2d_<ContainerAllocator> >::other >  _corners_type;
  _corners_type corners;





  typedef boost::shared_ptr< ::path_planning_vrep_simulation::GoalData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::path_planning_vrep_simulation::GoalData_<ContainerAllocator> const> ConstPtr;

}; // struct GoalData_

typedef ::path_planning_vrep_simulation::GoalData_<std::allocator<void> > GoalData;

typedef boost::shared_ptr< ::path_planning_vrep_simulation::GoalData > GoalDataPtr;
typedef boost::shared_ptr< ::path_planning_vrep_simulation::GoalData const> GoalDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::path_planning_vrep_simulation::GoalData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::path_planning_vrep_simulation::GoalData_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace path_planning_vrep_simulation

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'path_planning_vrep_simulation': ['/home/konst/path_planning_vrep_simulation/src/path_planning_vrep_simulation-master/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::path_planning_vrep_simulation::GoalData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::path_planning_vrep_simulation::GoalData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::path_planning_vrep_simulation::GoalData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::path_planning_vrep_simulation::GoalData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::path_planning_vrep_simulation::GoalData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::path_planning_vrep_simulation::GoalData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::path_planning_vrep_simulation::GoalData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "89407f0ee13636c511a99243be5bc06e";
  }

  static const char* value(const ::path_planning_vrep_simulation::GoalData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x89407f0ee13636c5ULL;
  static const uint64_t static_value2 = 0x11a99243be5bc06eULL;
};

template<class ContainerAllocator>
struct DataType< ::path_planning_vrep_simulation::GoalData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "path_planning_vrep_simulation/GoalData";
  }

  static const char* value(const ::path_planning_vrep_simulation::GoalData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::path_planning_vrep_simulation::GoalData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32     id\n\
Point2d   center\n\
Point2d[] corners\n\
================================================================================\n\
MSG: path_planning_vrep_simulation/Point2d\n\
float32 x\n\
float32 y\n\
";
  }

  static const char* value(const ::path_planning_vrep_simulation::GoalData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::path_planning_vrep_simulation::GoalData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.center);
      stream.next(m.corners);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GoalData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::path_planning_vrep_simulation::GoalData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::path_planning_vrep_simulation::GoalData_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "center: ";
    s << std::endl;
    Printer< ::path_planning_vrep_simulation::Point2d_<ContainerAllocator> >::stream(s, indent + "  ", v.center);
    s << indent << "corners[]" << std::endl;
    for (size_t i = 0; i < v.corners.size(); ++i)
    {
      s << indent << "  corners[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::path_planning_vrep_simulation::Point2d_<ContainerAllocator> >::stream(s, indent + "    ", v.corners[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PATH_PLANNING_VREP_SIMULATION_MESSAGE_GOALDATA_H
