.class public Lcom/taobao/weex/appfram/storage/DefaultWXStorage;
.super Ljava/lang/Object;
.source "DefaultWXStorage.java"

# interfaces
.implements Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;


# instance fields
.field private mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-direct {v0, p1}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->performSetItem(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->performGetItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;)Z
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->performRemoveItem(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;)J
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->performGetLength()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;)Ljava/util/List;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->performGetAllKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;)Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    return-object p0
.end method

.method private execute(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    :cond_0
    if-eqz p1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private performGetAllKeys()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 320
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "key"

    .line 321
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "default_wx_storage"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 323
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 331
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string/jumbo v3, "weex_storage"

    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DefaultWXStorage occurred an exception when execute getAllKeys:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 332
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private performGetItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const-string/jumbo v0, "weex_storage"

    .line 245
    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-virtual {v1}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v1, 0x0

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const-string v10, "value"

    .line 250
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    new-array v6, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v6, v12

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "default_wx_storage"

    const-string v5, "key=?"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 256
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 257
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "timestamp"

    .line 259
    sget-object v5, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->sDateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v4, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-virtual {v4}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "default_wx_storage"

    const-string v6, "key= ?"

    new-array v7, v11, [Ljava/lang/String;

    aput-object p1, v7, v12

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update timestamp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v3, v11, :cond_1

    const-string v3, "success"

    goto :goto_0

    :cond_1
    const-string v3, "failed"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for operation [getItem(key = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")]"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 268
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DefaultWXStorage occurred an exception when execute getItem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 272
    throw p1
.end method

.method private performGetLength()J
    .locals 7

    .line 294
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const-string v3, "SELECT count(key) FROM default_wx_storage"

    const/4 v4, 0x0

    .line 302
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 303
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 309
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    return-wide v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v3, "weex_storage"

    .line 305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DefaultWXStorage occurred an exception when execute getLength:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    .line 309
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    return-wide v1

    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 311
    :cond_3
    throw v0
.end method

.method private performRemoveItem(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v2, "default_wx_storage"

    const-string v3, "key=?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    aput-object p1, v5, v1

    .line 283
    invoke-virtual {v0, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception p1

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultWXStorage occurred an exception when execute removeItem:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "weex_storage"

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private performSetItem(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "value",
            "isPersistent",
            "allowRetryWhenFull"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 169
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set k-v to storage(key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",isPersistent:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",allowRetry:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "weex_storage"

    invoke-static {v5, v2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "INSERT OR REPLACE INTO default_wx_storage VALUES (?,?,?,?);"

    const/4 v6, 0x0

    .line 172
    sget-object v7, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->sDateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 174
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 175
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    const/4 v0, 0x1

    .line 176
    invoke-virtual {v6, v0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x2

    .line 177
    invoke-virtual {v6, v2, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x3

    .line 178
    invoke-virtual {v6, v2, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x4

    if-eqz p3, :cond_1

    const-wide/16 v7, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v7, 0x0

    .line 179
    :goto_0
    invoke-virtual {v6, v2, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 180
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    .line 196
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    return v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 183
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DefaultWXStorage occurred an exception when execute setItem :"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    instance-of v0, v0, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v0, :cond_4

    if-eqz p4, :cond_4

    .line 185
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->trimToSize()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 188
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "retry set k-v to storage(key:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v5, p4}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->performSetItem(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    .line 196
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3
    return p1

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5
    return v1

    :goto_1
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 198
    :cond_6
    throw p1
.end method

.method private trimToSize()Z
    .locals 13

    const-string/jumbo v0, "weex_storage"

    .line 205
    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-virtual {v1}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v1, 0x0

    if-nez v2, :cond_0

    return v1

    .line 210
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v11, "key"

    const-string v12, "persistent"

    .line 213
    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "default_wx_storage"

    const-string v9, "timestamp ASC"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x1

    .line 215
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    div-int/lit8 v4, v4, 0xa
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    .line 216
    :cond_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 217
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 218
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v3, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_1

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 221
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v5, v4, :cond_1

    .line 230
    :cond_3
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v4

    const/4 v5, 0x0

    .line 228
    :goto_2
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DefaultWXStorage occurred an exception when execute trimToSize:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_3
    if-gtz v5, :cond_4

    return v1

    .line 237
    :cond_4
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 238
    invoke-direct {p0, v2}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->performRemoveItem(Ljava/lang/String;)Z

    goto :goto_4

    .line 240
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " items by lru"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 230
    :goto_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 231
    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 147
    new-instance v1, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$7;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$7;-><init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/util/concurrent/ExecutorService;)V

    invoke-direct {p0, v1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public getAllKeys(Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$5;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$5;-><init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    invoke-direct {p0, v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getItem(Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "listener"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;-><init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    invoke-direct {p0, v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public length(Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$4;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$4;-><init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    invoke-direct {p0, v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeItem(Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "listener"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;-><init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    invoke-direct {p0, v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setItem(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "key",
            "value",
            "listener"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;-><init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    invoke-direct {p0, v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setItemPersistent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "key",
            "value",
            "listener"
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;-><init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    invoke-direct {p0, v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
