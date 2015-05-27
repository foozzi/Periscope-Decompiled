.class Lo/alb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bLk:Ljava/util/concurrent/Semaphore;

.field final synthetic bLl:Lo/ala;


# direct methods
.method constructor <init>(Lo/ala;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lo/alb;->bLl:Lo/ala;

    iput-object p2, p0, Lo/alb;->bLk:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lo/alb;->bLk:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 202
    return-void
.end method
