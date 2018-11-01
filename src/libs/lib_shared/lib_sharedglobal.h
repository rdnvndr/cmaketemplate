#include <QtCore/QtGlobal>

#if defined(LIB_SHARED_LIBRARY)
#  define LIB_SHAREDLIB Q_DECL_EXPORT
#else
#  define LIB_SHAREDLIB Q_DECL_IMPORT
#endif
