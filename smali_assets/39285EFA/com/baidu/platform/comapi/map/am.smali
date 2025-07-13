.class public Lcom/baidu/platform/comapi/map/am;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SimpleGestureAdapter.java"


# instance fields
.field private a:Lcom/baidu/platform/comapi/map/MapController;

.field private b:Lcom/baidu/platform/comapi/map/OnLongPressListener;

.field private volatile c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/GestureDetector$SimpleOnGestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/am;->c:Ljava/util/Set;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/am;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/platform/comapi/map/OnLongPressListener;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/am;->b:Lcom/baidu/platform/comapi/map/OnLongPressListener;

    return-object v0
.end method

.method public a(Landroid/view/GestureDetector$SimpleOnGestureListener;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/am;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/am;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/baidu/platform/comapi/map/MapController;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/am;->a:Lcom/baidu/platform/comapi/map/MapController;

    return-void
.end method

.method a(Lcom/baidu/platform/comapi/map/OnLongPressListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/am;->b:Lcom/baidu/platform/comapi/map/OnLongPressListener;

    return-void
.end method

.method public b(Landroid/view/GestureDetector$SimpleOnGestureListener;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/am;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/am;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 71
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/am;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/am;->c:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 184
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 185
    invoke-virtual {v2, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 188
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/am;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->handleDoubleDownClick(Landroid/view/MotionEvent;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 188
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/am;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/am;->c:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 138
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 139
    invoke-virtual {v2, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 142
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/am;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->handleDoubleTouch(Landroid/view/MotionEvent;)V

    .line 146
    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 142
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/am;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/am;->c:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 124
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 125
    invoke-virtual {v2, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 128
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 128
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/am;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/am;->c:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 45
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 46
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0

    .line 49
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/am;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 56
    :cond_1
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapControlMode()Lcom/baidu/platform/comapi/map/MapController$MapControlMode;

    move-result-object v0

    sget-object v1, Lcom/baidu/platform/comapi/map/MapController$MapControlMode;->STREET:Lcom/baidu/platform/comapi/map/MapController$MapControlMode;

    if-ne v0, v1, :cond_2

    .line 57
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/am;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p2}, Lcom/baidu/platform/comapi/map/MapController;->handleTouchUp(Landroid/view/MotionEvent;)Z

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/am;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/platform/comapi/map/MapController;->handleFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 49
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/am;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/am;->c:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 206
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/GestureDetector$SimpleOnGestureListener;

    if-eqz v2, :cond_0

    .line 208
    invoke-virtual {v2, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 212
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/am;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->isEnableDMoveZoom()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/am;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->isNaviMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/am;->b:Lcom/baidu/platform/comapi/map/OnLongPressListener;

    if-eqz v0, :cond_2

    .line 216
    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/map/OnLongPressListener;->onLongPress(Landroid/view/MotionEvent;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 212
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/am;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/am;->c:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 94
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 95
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0

    .line 98
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 98
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/am;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/am;->c:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 108
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/GestureDetector$SimpleOnGestureListener;

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v2, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 114
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    return-void

    :catchall_0
    move-exception p1

    .line 114
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/am;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/am;->c:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 161
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/GestureDetector$SimpleOnGestureListener;

    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {v2, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 167
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/am;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->handleTouchSingleClick(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1

    :catchall_0
    move-exception p1

    .line 167
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/am;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/am;->c:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 80
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 81
    invoke-virtual {v2, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 84
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 84
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
