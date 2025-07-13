.class interface abstract Lcom/taobao/weex/ui/component/list/DragHelper;
.super Ljava/lang/Object;
.source "DragHelper.java"


# virtual methods
.method public abstract isDragExcluded(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewHolder"
        }
    .end annotation
.end method

.method public abstract isDraggable()Z
.end method

.method public abstract isLongPressDragEnabled()Z
.end method

.method public abstract onDragEnd(Lcom/taobao/weex/ui/component/WXComponent;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "from",
            "to"
        }
    .end annotation
.end method

.method public abstract onDragStart(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "component",
            "from"
        }
    .end annotation
.end method

.method public abstract onDragging(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromPos",
            "toPos"
        }
    .end annotation
.end method

.method public abstract setDragExcluded(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolder",
            "isExcluded"
        }
    .end annotation
.end method

.method public abstract setDraggable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "draggable"
        }
    .end annotation
.end method

.method public abstract setLongPressDragEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method public abstract startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewHolder"
        }
    .end annotation
.end method
