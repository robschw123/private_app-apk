.class public interface abstract annotation Lio/dcloud/feature/uniapp/common/UniModuleAnno;
.super Ljava/lang/Object;
.source "UniModuleAnno.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lio/dcloud/feature/uniapp/common/UniModuleAnno;
        moduleMethod = true
        runOnUIThread = true
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Ljava/lang/annotation/Inherited;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract moduleMethod()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract runOnUIThread()Z
.end method
