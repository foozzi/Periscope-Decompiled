.class abstract Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/va;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AbstractSource"
.end annotation


# instance fields
.field protected closed:Z

.field final synthetic this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/http/HttpConnection;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/http/HttpConnection;Lcom/squareup/okhttp/internal/http/HttpConnection$1;)V
    .locals 0

    .line 332
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;)V

    return-void
.end method


# virtual methods
.method protected final endOfInput(Z)V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$400(Lcom/squareup/okhttp/internal/http/HttpConnection;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I
    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$400(Lcom/squareup/okhttp/internal/http/HttpConnection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    const/4 v1, 0x0

    # setter for: Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$402(Lcom/squareup/okhttp/internal/http/HttpConnection;I)I

    .line 347
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$600(Lcom/squareup/okhttp/internal/http/HttpConnection;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 348
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    const/4 v1, 0x0

    # setter for: Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$602(Lcom/squareup/okhttp/internal/http/HttpConnection;I)I

    .line 349
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/squareup/okhttp/internal/http/HttpConnection;->pool:Lcom/squareup/okhttp/ConnectionPool;
    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$700(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lcom/squareup/okhttp/ConnectionPool;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;
    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$800(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lcom/squareup/okhttp/Connection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/Internal;->recycle(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Connection;)V

    goto :goto_0

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$600(Lcom/squareup/okhttp/internal/http/HttpConnection;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 351
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    const/4 v1, 0x6

    # setter for: Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$402(Lcom/squareup/okhttp/internal/http/HttpConnection;I)I

    .line 352
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$800(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lcom/squareup/okhttp/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 354
    :cond_2
    :goto_0
    return-void
.end method

.method public timeout()Lo/vb;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lo/ui;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$500(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lo/ui;

    move-result-object v0

    invoke-interface {v0}, Lo/ui;->timeout()Lo/vb;

    move-result-object v0

    return-object v0
.end method

.method protected final unexpectedEndOfInput()V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    # getter for: Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$800(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lcom/squareup/okhttp/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 370
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    const/4 v1, 0x6

    # setter for: Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$402(Lcom/squareup/okhttp/internal/http/HttpConnection;I)I

    .line 371
    return-void
.end method
