.class public interface abstract Lcom/taobao/weex/ui/flat/FlatComponent;
.super Ljava/lang/Object;
.source "FlatComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/taobao/weex/ui/flat/widget/Widget;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract promoteToView(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkAncestor"
        }
    .end annotation
.end method
