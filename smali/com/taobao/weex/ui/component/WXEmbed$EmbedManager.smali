.class public interface abstract Lcom/taobao/weex/ui/component/WXEmbed$EmbedManager;
.super Ljava/lang/Object;
.source "WXEmbed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXEmbed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EmbedManager"
.end annotation


# virtual methods
.method public abstract getEmbed(Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXEmbed;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemId"
        }
    .end annotation
.end method

.method public abstract putEmbed(Ljava/lang/String;Lcom/taobao/weex/ui/component/WXEmbed;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "itemId",
            "comp"
        }
    .end annotation
.end method
