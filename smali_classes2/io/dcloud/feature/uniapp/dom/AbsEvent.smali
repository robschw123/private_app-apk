.class public abstract Lio/dcloud/feature/uniapp/dom/AbsEvent;
.super Ljava/util/ArrayList;
.source "AbsEvent.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final EVENT_KEY_ARGS:Ljava/lang/String; = "params"

.field public static final EVENT_KEY_TYPE:Ljava/lang/String; = "type"

.field private static final serialVersionUID:J = -0x719c99876555422bL


# instance fields
.field private mEventBindingArgs:Landroidx/collection/ArrayMap;

.field private mEventBindingArgsValues:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method private addBindingArgsEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventName",
            "args"
        }
    .end annotation

    .line 156
    invoke-virtual {p0, p1}, Lio/dcloud/feature/uniapp/dom/AbsEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0, p1}, Lio/dcloud/feature/uniapp/dom/AbsEvent;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_2

    .line 160
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsEvent;->mEventBindingArgs:Landroidx/collection/ArrayMap;

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsEvent;->mEventBindingArgs:Landroidx/collection/ArrayMap;

    .line 163
    :cond_1
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsEvent;->mEventBindingArgs:Landroidx/collection/ArrayMap;

    invoke-static {p2}, Lcom/taobao/weex/dom/binding/ELUtils;->bindingBlock(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private addBindingEvent(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bindings"
        }
    .end annotation

    const-string v0, "type"

    .line 143
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    .line 144
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0, v0, p1}, Lio/dcloud/feature/uniapp/dom/AbsEvent;->addBindingArgsEvent(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static getEventName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 115
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 117
    :cond_0
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_1

    .line 118
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    const-string v0, "type"

    .line 119
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addEvent(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 97
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/dom/binding/JSONUtils;->isJSON(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/dom/binding/JSONUtils;->toJSON(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dcloud/feature/uniapp/dom/AbsEvent;->addEvent(Ljava/lang/Object;)V

    return-void

    .line 102
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-virtual {p0, p1}, Lio/dcloud/feature/uniapp/dom/AbsEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    invoke-virtual {p0, p1}, Lio/dcloud/feature/uniapp/dom/AbsEvent;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_1
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_2

    .line 107
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    .line 108
    invoke-direct {p0, p1}, Lio/dcloud/feature/uniapp/dom/AbsEvent;->addBindingEvent(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 65
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsEvent;->mEventBindingArgs:Landroidx/collection/ArrayMap;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 68
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsEvent;->mEventBindingArgsValues:Landroidx/collection/ArrayMap;

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 71
    :cond_1
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public abstract clone()Lio/dcloud/feature/uniapp/dom/AbsEvent;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/dom/AbsEvent;->clone()Lio/dcloud/feature/uniapp/dom/AbsEvent;

    move-result-object v0

    return-object v0
.end method

.method public getEventBindingArgs()Landroidx/collection/ArrayMap;
    .locals 1

    .line 89
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsEvent;->mEventBindingArgs:Landroidx/collection/ArrayMap;

    return-object v0
.end method

.method public getEventBindingArgsValues()Landroidx/collection/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsEvent;->mEventBindingArgsValues:Landroidx/collection/ArrayMap;

    return-object v0
.end method

.method public parseStatements()V
    .locals 3

    .line 130
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/dom/AbsEvent;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 131
    :goto_0
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/dom/AbsEvent;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 132
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsEvent;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    invoke-static {v1}, Lcom/taobao/weex/dom/binding/JSONUtils;->isJSON(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-static {v1}, Lcom/taobao/weex/dom/binding/JSONUtils;->toJSON(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 135
    invoke-direct {p0, v1}, Lio/dcloud/feature/uniapp/dom/AbsEvent;->addBindingEvent(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-virtual {p0, v0, v1}, Lio/dcloud/feature/uniapp/dom/AbsEvent;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public putEventBindingArgsValue(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsEvent;->mEventBindingArgsValues:Landroidx/collection/ArrayMap;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsEvent;->mEventBindingArgsValues:Landroidx/collection/ArrayMap;

    :cond_0
    if-nez p2, :cond_1

    .line 172
    iget-object p2, p0, Lio/dcloud/feature/uniapp/dom/AbsEvent;->mEventBindingArgsValues:Landroidx/collection/ArrayMap;

    invoke-virtual {p2, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsEvent;->mEventBindingArgsValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsEvent;->mEventBindingArgs:Landroidx/collection/ArrayMap;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsEvent;->mEventBindingArgsValues:Landroidx/collection/ArrayMap;

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setEventBindingArgs(Landroidx/collection/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventBindingArgs"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lio/dcloud/feature/uniapp/dom/AbsEvent;->mEventBindingArgs:Landroidx/collection/ArrayMap;

    return-void
.end method

.method public setEventBindingArgsValues(Landroidx/collection/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventBindingArgsValues"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lio/dcloud/feature/uniapp/dom/AbsEvent;->mEventBindingArgsValues:Landroidx/collection/ArrayMap;

    return-void
.end method
