.class Lo/ʕ$ˋ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᓳ$ˊ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ʕ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02cb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:Ljava/lang/Object;>Ljava/lang/Object;Lo/\u14f3$\u02ca;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field private final hj:Lo/ﭥ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufb65<TDataType;>;"
        }
    .end annotation
.end field

.field final synthetic hk:Lo/ʕ;


# direct methods
.method public constructor <init>(Lo/ʕ;Lo/ﭥ;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb65<TDataType;>;TDataType;)V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lo/ʕ$ˋ;->hk:Lo/ʕ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p2, p0, Lo/ʕ$ˋ;->hj:Lo/ﭥ;

    .line 261
    iput-object p3, p0, Lo/ʕ$ˋ;->data:Ljava/lang/Object;

    .line 262
    return-void
.end method


# virtual methods
.method public ˎ(Ljava/io/File;)Z
    .locals 7

    .line 266
    const/4 v2, 0x0

    .line 267
    const/4 v3, 0x0

    .line 269
    :try_start_0
    iget-object v0, p0, Lo/ʕ$ˋ;->hk:Lo/ʕ;

    invoke-static {v0}, Lo/ʕ;->ˊ(Lo/ʕ;)Lo/ʕ$ˊ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ʕ$ˊ;->ˋ(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v0

    move-object v3, v0

    .line 270
    iget-object v0, p0, Lo/ʕ$ˋ;->hj:Lo/ﭥ;

    iget-object v1, p0, Lo/ʕ$ˋ;->data:Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lo/ﭥ;->ˊ(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    move v2, v0

    .line 276
    if-eqz v3, :cond_2

    .line 278
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    goto :goto_1

    .line 279
    :catch_0
    move-exception v4

    .line 281
    goto :goto_1

    .line 271
    :catch_1
    move-exception v4

    .line 272
    const-string v0, "DecodeJob"

    const/4 v1, 0x3

    :try_start_2
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const-string v0, "DecodeJob"

    const-string v1, "Failed to find file to write to disk cache"

    invoke-static {v0, v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    :cond_0
    if-eqz v3, :cond_2

    .line 278
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 281
    goto :goto_1

    .line 279
    :catch_2
    move-exception v4

    .line 281
    goto :goto_1

    .line 276
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_1

    .line 278
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 281
    goto :goto_0

    .line 279
    :catch_3
    move-exception v6

    .line 281
    :cond_1
    :goto_0
    throw v5

    .line 284
    :cond_2
    :goto_1
    return v2
.end method
