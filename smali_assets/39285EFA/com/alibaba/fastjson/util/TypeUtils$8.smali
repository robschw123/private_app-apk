.class final Lcom/alibaba/fastjson/util/TypeUtils$8;
.super Ljava/util/HashSet;
.source "TypeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 2793
    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(I)V

    const-string p1, "net.sf.cglib.proxy.Factory"

    .line 2794
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils$8;->add(Ljava/lang/Object;)Z

    const-string p1, "org.springframework.cglib.proxy.Factory"

    .line 2795
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils$8;->add(Ljava/lang/Object;)Z

    const-string p1, "javassist.util.proxy.ProxyObject"

    .line 2796
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils$8;->add(Ljava/lang/Object;)Z

    const-string p1, "org.apache.ibatis.javassist.util.proxy.ProxyObject"

    .line 2797
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils$8;->add(Ljava/lang/Object;)Z

    const-string p1, "org.hibernate.proxy.HibernateProxy"

    .line 2798
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils$8;->add(Ljava/lang/Object;)Z

    const-string p1, "org.springframework.context.annotation.ConfigurationClassEnhancer$EnhancedConfiguration"

    .line 2799
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils$8;->add(Ljava/lang/Object;)Z

    return-void
.end method
