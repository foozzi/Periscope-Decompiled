.class public Lo/ov;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final Uh:Ljava/util/concurrent/ExecutorService;


# instance fields
.field TU:Z

.field TV:Z

.field TW:Z

.field TX:Z

.field TY:Z

.field TZ:Z

.field Ui:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/Class<*>;>;"
        }
    .end annotation
.end field

.field executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lo/ov;->Uh:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ov;->TV:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ov;->TW:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ov;->TX:Z

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ov;->TY:Z

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ov;->TZ:Z

    .line 36
    sget-object v0, Lo/ov;->Uh:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lo/ov;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 40
    return-void
.end method


# virtual methods
.method public bY()Lo/ot;
    .locals 1

    .line 133
    new-instance v0, Lo/ot;

    invoke-direct {v0, p0}, Lo/ot;-><init>(Lo/ov;)V

    return-object v0
.end method

.method public ᔉ(Z)Lo/ov;
    .locals 0

    .line 73
    iput-boolean p1, p0, Lo/ov;->TU:Z

    .line 74
    return-object p0
.end method
