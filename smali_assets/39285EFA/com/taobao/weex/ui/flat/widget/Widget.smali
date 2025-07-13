.class public interface abstract Lcom/taobao/weex/ui/flat/widget/Widget;
.super Ljava/lang/Object;
.source "Widget.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Widget"


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation
.end method

.method public abstract getBackgroundAndBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;
.end method

.method public abstract getBorderBox()Landroid/graphics/Rect;
.end method

.method public abstract getLocInFlatContainer()Landroid/graphics/Point;
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation
.end method

.method public abstract setBackgroundAndBorder(Lcom/taobao/weex/ui/view/border/BorderDrawable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundBorder"
        }
    .end annotation
.end method

.method public abstract setContentBox(IIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "leftOffset",
            "topOffset",
            "rightOffset",
            "bottomOffset"
        }
    .end annotation
.end method

.method public abstract setLayout(IIIIIILandroid/graphics/Point;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "left",
            "right",
            "top",
            "bottom",
            "offset"
        }
    .end annotation
.end method
