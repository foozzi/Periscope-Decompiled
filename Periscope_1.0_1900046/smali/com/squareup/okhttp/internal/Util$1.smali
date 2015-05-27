.class final Lcom/squareup/okhttp/internal/Util$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$daemon:Z

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/squareup/okhttp/internal/Util$1;->val$name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/squareup/okhttp/internal/Util$1;->val$daemon:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 242
    new-instance v1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/Util$1;->val$name:Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 243
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/Util$1;->val$daemon:Z

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 244
    return-object v1
.end method
