.class Lcom/baidu/platform/comapi/map/h$f;
.super Ljava/lang/Thread;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platform/comapi/map/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Lcom/baidu/platform/comapi/map/h$e;

.field private s:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/platform/comapi/map/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/platform/comapi/map/h;",
            ">;)V"
        }
    .end annotation

    .line 1003
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/h$f;->p:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 1538
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/h$f;->q:Z

    const/4 v1, 0x0

    .line 1004
    iput v1, p0, Lcom/baidu/platform/comapi/map/h$f;->k:I

    .line 1005
    iput v1, p0, Lcom/baidu/platform/comapi/map/h$f;->l:I

    .line 1006
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/h$f;->n:Z

    .line 1007
    iput v0, p0, Lcom/baidu/platform/comapi/map/h$f;->m:I

    .line 1008
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/h$f;->s:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/comapi/map/h$f;Z)Z
    .locals 0

    .line 1001
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/h$f;->b:Z

    return p1
.end method

.method private j()V
    .locals 1

    .line 1032
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/h$f;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1033
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/h$f;->i:Z

    .line 1034
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/h$f;->r:Lcom/baidu/platform/comapi/map/h$e;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/h$e;->e()V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    .line 1043
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/h$f;->h:Z

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/h$f;->r:Lcom/baidu/platform/comapi/map/h$e;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/h$e;->f()V

    const/4 v0, 0x0

    .line 1045
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/h$f;->h:Z

    .line 1046
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/map/h$g;->c(Lcom/baidu/platform/comapi/map/h$f;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1051
    new-instance v0, Lcom/baidu/platform/comapi/map/h$e;

    iget-object v2, v1, Lcom/baidu/platform/comapi/map/h$f;->s:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/baidu/platform/comapi/map/h$e;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/baidu/platform/comapi/map/h$f;->r:Lcom/baidu/platform/comapi/map/h$e;

    const/4 v0, 0x0

    .line 1052
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->h:Z

    .line 1053
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->i:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x0

    .line 1069
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1071
    :goto_2
    :try_start_1
    iget-boolean v2, v1, Lcom/baidu/platform/comapi/map/h$f;->a:Z

    if-eqz v2, :cond_0

    .line 1072
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1346
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v2

    monitor-enter v2

    .line 1347
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/h$f;->j()V

    .line 1348
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/h$f;->k()V

    .line 1349
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1075
    :cond_0
    :try_start_3
    iget-object v2, v1, Lcom/baidu/platform/comapi/map/h$f;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1076
    iget-object v2, v1, Lcom/baidu/platform/comapi/map/h$f;->p:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/Runnable;

    move-object/from16 v19, v3

    goto/16 :goto_7

    .line 1082
    :cond_1
    iget-boolean v2, v1, Lcom/baidu/platform/comapi/map/h$f;->d:Z

    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->c:Z

    if-eq v2, v0, :cond_2

    .line 1084
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->d:Z

    .line 1085
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    const-string v2, "GLThread"

    move/from16 v18, v0

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v3

    const-string v3, "mPaused is now "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/baidu/platform/comapi/map/h$f;->d:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " tid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v20, v4

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/h$f;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    move-object/from16 v19, v3

    move/from16 v20, v4

    const/16 v18, 0x0

    .line 1092
    :goto_3
    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->j:Z

    if-eqz v0, :cond_3

    const-string v0, "GLThread"

    .line 1094
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing EGL context because asked to tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/h$f;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/h$f;->j()V

    .line 1097
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/h$f;->k()V

    const/4 v0, 0x0

    .line 1098
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->j:Z

    const/4 v11, 0x1

    :cond_3
    if-eqz v7, :cond_4

    .line 1104
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/h$f;->j()V

    .line 1105
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/h$f;->k()V

    const/4 v7, 0x0

    :cond_4
    if-eqz v18, :cond_5

    .line 1110
    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->i:Z

    if-eqz v0, :cond_5

    const-string v0, "GLThread"

    .line 1112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing EGL surface because paused tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/h$f;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/h$f;->j()V

    :cond_5
    if-eqz v18, :cond_8

    .line 1118
    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->h:Z

    if-eqz v0, :cond_8

    .line 1119
    iget-object v0, v1, Lcom/baidu/platform/comapi/map/h$f;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/h;

    if-eqz v0, :cond_6

    .line 1120
    invoke-static {v0}, Lcom/baidu/platform/comapi/map/h;->g(Lcom/baidu/platform/comapi/map/h;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_7

    .line 1121
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v0

    .line 1122
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/h$g;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1123
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/h$f;->k()V

    const-string v0, "GLThread"

    .line 1125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing EGL context because paused tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/h$f;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v18, :cond_9

    .line 1132
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/h$g;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1133
    iget-object v0, v1, Lcom/baidu/platform/comapi/map/h$f;->r:Lcom/baidu/platform/comapi/map/h$e;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/h$e;->f()V

    const-string v0, "GLThread"

    .line 1135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "terminating EGL because paused tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/h$f;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_9
    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->e:Z

    if-nez v0, :cond_b

    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->g:Z

    if-nez v0, :cond_b

    const-string v0, "GLThread"

    .line 1143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noticed surfaceView surface lost tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/h$f;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->i:Z

    if-eqz v0, :cond_a

    .line 1146
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/h$f;->j()V

    :cond_a
    const/4 v0, 0x1

    .line 1148
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->g:Z

    const/4 v0, 0x0

    .line 1149
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->f:Z

    .line 1150
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1154
    :cond_b
    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->e:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->g:Z

    if-eqz v0, :cond_c

    const-string v0, "GLThread"

    .line 1156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noticed surfaceView surface acquired tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/h$f;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1158
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->g:Z

    .line 1159
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_c
    if-eqz v10, :cond_d

    const-string v0, "GLThread"

    .line 1164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending render notification tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/h$f;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1168
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->o:Z

    .line 1169
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1173
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/h$f;->m()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1176
    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->h:Z

    if-nez v0, :cond_f

    if-eqz v11, :cond_e

    move/from16 v4, v20

    const/4 v11, 0x0

    goto :goto_5

    .line 1179
    :cond_e
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/h$g;->b(Lcom/baidu/platform/comapi/map/h$f;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v0, :cond_f

    .line 1181
    :try_start_4
    iget-object v0, v1, Lcom/baidu/platform/comapi/map/h$f;->r:Lcom/baidu/platform/comapi/map/h$e;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/h$e;->a()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v0, 0x1

    .line 1186
    :try_start_5
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->h:Z

    .line 1189
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    .line 1183
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/platform/comapi/map/h$g;->c(Lcom/baidu/platform/comapi/map/h$f;)V

    .line 1184
    throw v0

    :cond_f
    move/from16 v4, v20

    .line 1193
    :goto_5
    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->h:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->i:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 1194
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->i:Z

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x1

    .line 1200
    :cond_10
    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->i:Z

    if-eqz v0, :cond_20

    .line 1201
    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->q:Z

    if-eqz v0, :cond_11

    .line 1203
    iget v0, v1, Lcom/baidu/platform/comapi/map/h$f;->k:I

    .line 1204
    iget v2, v1, Lcom/baidu/platform/comapi/map/h$f;->l:I

    const-string v3, "GLThread"

    .line 1207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "noticing that we want render notification tid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/h$f;->getId()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1207
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 1214
    iput-boolean v3, v1, Lcom/baidu/platform/comapi/map/h$f;->q:Z

    move v12, v0

    move v13, v2

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    .line 1216
    :goto_6
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->n:Z

    .line 1217
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1234
    :goto_7
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v14, :cond_12

    .line 1237
    :try_start_6
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    move-object/from16 v3, v19

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_12
    if-eqz v5, :cond_14

    const-string v0, "GLThread"

    const-string v2, "egl createSurface"

    .line 1244
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-object v0, v1, Lcom/baidu/platform/comapi/map/h$f;->r:Lcom/baidu/platform/comapi/map/h$e;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/h$e;->b()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1247
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v0, 0x1

    .line 1248
    :try_start_7
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/h$f;->f:Z

    .line 1249
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1250
    monitor-exit v2

    move-object/from16 v3, v19

    :goto_8
    const/4 v0, 0x0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :cond_13
    const/4 v5, 0x0

    :cond_14
    if-eqz v6, :cond_15

    .line 1257
    iget-object v0, v1, Lcom/baidu/platform/comapi/map/h$f;->r:Lcom/baidu/platform/comapi/map/h$e;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/h$e;->c()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljavax/microedition/khronos/opengles/GL10;

    .line 1259
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/platform/comapi/map/h$g;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v6, 0x0

    goto :goto_9

    :cond_15
    move-object/from16 v3, v19

    :goto_9
    if-eqz v4, :cond_17

    const-string v0, "GLThread"

    const-string v2, "onSurfaceCreated"

    .line 1265
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iget-object v0, v1, Lcom/baidu/platform/comapi/map/h$f;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/h;

    if-eqz v0, :cond_16

    .line 1269
    invoke-static {v0}, Lcom/baidu/platform/comapi/map/h;->h(Lcom/baidu/platform/comapi/map/h;)Lcom/baidu/platform/comapi/map/aq;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/h;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/h;->getHeight()I

    move-result v0

    move/from16 v16, v5

    const/4 v5, 0x0

    const/4 v15, 0x0

    invoke-interface {v2, v15, v4, v0, v5}, Lcom/baidu/platform/comapi/map/aq;->a(Landroid/view/SurfaceHolder;III)V

    goto :goto_a

    :cond_16
    move/from16 v16, v5

    const/4 v5, 0x0

    const/4 v15, 0x0

    :goto_a
    const/4 v4, 0x0

    goto :goto_b

    :cond_17
    move/from16 v16, v5

    const/4 v5, 0x0

    const/4 v15, 0x0

    :goto_b
    if-eqz v8, :cond_19

    const-string v0, "GLThread"

    .line 1276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSurfaceChanged("

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget-object v0, v1, Lcom/baidu/platform/comapi/map/h$f;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/h;

    if-eqz v0, :cond_18

    .line 1280
    invoke-static {v0}, Lcom/baidu/platform/comapi/map/h;->h(Lcom/baidu/platform/comapi/map/h;)Lcom/baidu/platform/comapi/map/aq;

    move-result-object v0

    invoke-interface {v0, v12, v13}, Lcom/baidu/platform/comapi/map/aq;->a(II)V

    :cond_18
    const/4 v8, 0x0

    .line 1289
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1292
    iget-object v0, v1, Lcom/baidu/platform/comapi/map/h$f;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/h;

    if-eqz v0, :cond_1a

    .line 1294
    invoke-static {v0}, Lcom/baidu/platform/comapi/map/h;->h(Lcom/baidu/platform/comapi/map/h;)Lcom/baidu/platform/comapi/map/aq;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/baidu/platform/comapi/map/aq;->a(Ljava/lang/Object;)V

    .line 1295
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/h;->getFPS()I

    move-result v0

    goto :goto_c

    :cond_1a
    const/16 v0, 0x3c

    .line 1298
    :goto_c
    iget-object v5, v1, Lcom/baidu/platform/comapi/map/h$f;->r:Lcom/baidu/platform/comapi/map/h$e;

    invoke-virtual {v5}, Lcom/baidu/platform/comapi/map/h$e;->d()I

    move-result v5

    const/16 v15, 0x3000

    if-eq v5, v15, :cond_1c

    const/16 v15, 0x300e

    if-eq v5, v15, :cond_1b

    const-string v15, "GLThread"

    const-string v2, "eglSwapBuffers"

    .line 1318
    invoke-static {v15, v2, v5}, Lcom/baidu/platform/comapi/map/h$e;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1320
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v2

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/4 v5, 0x1

    .line 1321
    :try_start_9
    iput-boolean v5, v1, Lcom/baidu/platform/comapi/map/h$f;->f:Z

    .line 1322
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1323
    monitor-exit v2

    goto :goto_d

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    :cond_1b
    const/4 v5, 0x1

    const-string v2, "GLThread"

    .line 1309
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "egl context lost tid="

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v15, v6

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/h$f;->getId()J

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    goto :goto_e

    :cond_1c
    :goto_d
    move v15, v6

    :goto_e
    if-eqz v9, :cond_1d

    const/4 v10, 0x1

    .line 1331
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v2, 0x3c

    if-ge v0, v2, :cond_1e

    if-lez v0, :cond_1e

    const/16 v2, 0x3e8

    .line 1333
    div-int/2addr v2, v0

    move-object v0, v3

    int-to-long v2, v2

    sub-long v5, v5, v18

    sub-long/2addr v2, v5

    const-wide/16 v5, 0x1

    cmp-long v17, v2, v5

    if-lez v17, :cond_1f

    .line 1335
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v5

    monitor-enter v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1336
    :try_start_b
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 1337
    monitor-exit v5

    goto :goto_f

    :catchall_3
    move-exception v0

    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_1e
    move-object v0, v3

    :cond_1f
    :goto_f
    move-object v3, v0

    move v6, v15

    move/from16 v5, v16

    goto/16 :goto_8

    :cond_20
    move/from16 v17, v5

    const/4 v0, 0x0

    goto :goto_10

    :cond_21
    const/4 v0, 0x0

    move/from16 v4, v20

    :goto_10
    :try_start_d
    const-string v2, "GLThread"

    .line 1224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "waiting tid="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v4

    move/from16 v17, v5

    .line 1225
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/h$f;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " mHaveEglContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/baidu/platform/comapi/map/h$f;->h:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mHaveEglSurface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/baidu/platform/comapi/map/h$f;->i:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mPaused: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/baidu/platform/comapi/map/h$f;->d:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mHasSurface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/baidu/platform/comapi/map/h$f;->e:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mSurfaceIsBad: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/baidu/platform/comapi/map/h$f;->f:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mWaitingForSurface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/baidu/platform/comapi/map/h$f;->g:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/baidu/platform/comapi/map/h$f;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/baidu/platform/comapi/map/h$f;->l:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mRequestRender: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/baidu/platform/comapi/map/h$f;->n:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mRenderMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/baidu/platform/comapi/map/h$f;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1224
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    move v4, v0

    move/from16 v5, v17

    move-object/from16 v3, v19

    const/4 v0, 0x0

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    .line 1234
    monitor-exit v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v0

    .line 1346
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v2

    monitor-enter v2

    .line 1347
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/h$f;->j()V

    .line 1348
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/h$f;->k()V

    .line 1349
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_12

    :goto_11
    throw v0

    :goto_12
    goto :goto_11
.end method

.method private m()Z
    .locals 2

    .line 1358
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/h$f;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/h$f;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/h$f;->f:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/baidu/platform/comapi/map/h$f;->k:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/baidu/platform/comapi/map/h$f;->l:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/h$f;->n:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/baidu/platform/comapi/map/h$f;->m:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1366
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v0

    monitor-enter v0

    .line 1367
    :try_start_0
    iput p1, p0, Lcom/baidu/platform/comapi/map/h$f;->m:I

    .line 1368
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1369
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1364
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(II)V
    .locals 3

    .line 1462
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v0

    monitor-enter v0

    .line 1463
    :try_start_0
    iput p1, p0, Lcom/baidu/platform/comapi/map/h$f;->k:I

    .line 1464
    iput p2, p0, Lcom/baidu/platform/comapi/map/h$f;->l:I

    const/4 p1, 0x1

    .line 1465
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/h$f;->q:Z

    .line 1466
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/h$f;->n:Z

    const/4 p1, 0x0

    .line 1467
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/h$f;->o:Z

    .line 1468
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1471
    :goto_0
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/h$f;->b:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/h$f;->d:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/h$f;->o:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/h$f;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Main thread"

    .line 1473
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowResize waiting for render complete from tid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/h$f;->getId()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1476
    :try_start_1
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1478
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1481
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1514
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v0

    monitor-enter v0

    .line 1515
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/h$f;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1516
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1517
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1512
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "r must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 1354
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/h$f;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/h$f;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/h$f;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()I
    .locals 2

    .line 1373
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v0

    monitor-enter v0

    .line 1374
    :try_start_0
    iget v1, p0, Lcom/baidu/platform/comapi/map/h$f;->m:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1375
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 2

    .line 1379
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1380
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/h$f;->n:Z

    .line 1381
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1382
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 5

    .line 1386
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    .line 1388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceCreated tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/h$f;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 1390
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/h$f;->e:Z

    .line 1391
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1392
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/h$f;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/h$f;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1394
    :try_start_1
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1396
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1399
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public e()V
    .locals 5

    .line 1403
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    .line 1405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceDestroyed tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/h$f;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1407
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/h$f;->e:Z

    .line 1408
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1409
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/h$f;->g:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/h$f;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1411
    :try_start_1
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1413
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1416
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public f()V
    .locals 5

    .line 1420
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    .line 1422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/h$f;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 1424
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/h$f;->c:Z

    .line 1425
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1426
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/h$f;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/h$f;->d:Z

    if-nez v1, :cond_0

    const-string v1, "Main thread"

    const-string v2, "onPause waiting for mPaused."

    .line 1428
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1431
    :try_start_1
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1433
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1436
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public g()V
    .locals 5

    .line 1440
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    .line 1442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/h$f;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1444
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/h$f;->c:Z

    const/4 v2, 0x1

    .line 1445
    iput-boolean v2, p0, Lcom/baidu/platform/comapi/map/h$f;->n:Z

    .line 1446
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/h$f;->o:Z

    .line 1447
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1448
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/h$f;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/h$f;->d:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/h$f;->o:Z

    if-nez v1, :cond_0

    const-string v1, "Main thread"

    const-string v2, "onResume waiting for !mPaused."

    .line 1450
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1453
    :try_start_1
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1455
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1458
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public h()V
    .locals 2

    .line 1487
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1488
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/h$f;->a:Z

    .line 1489
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1490
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/h$f;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1492
    :try_start_1
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1494
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1497
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    .line 1501
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/h$f;->j:Z

    .line 1502
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public run()V
    .locals 3

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/h$f;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/h$f;->setName(Ljava/lang/String;)V

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starting tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/h$f;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLThread"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/h$f;->l()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    :catch_0
    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/map/h$g;->a(Lcom/baidu/platform/comapi/map/h$f;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/baidu/platform/comapi/map/h;->a()Lcom/baidu/platform/comapi/map/h$g;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/platform/comapi/map/h$g;->a(Lcom/baidu/platform/comapi/map/h$f;)V

    throw v0

    :goto_0
    return-void
.end method
