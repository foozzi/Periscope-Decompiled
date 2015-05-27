.class Lo/aq$if;
.super Lo/am$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private final DM:Lo/ai;

.field private final GW:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lo/ai;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Lo/am$if;-><init>()V

    iput-object p1, p0, Lo/aq$if;->DM:Lo/ai;

    iput-object p2, p0, Lo/aq$if;->GW:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private ţ()Lo/ᒴ$ˎ;
    .locals 1

    iget-object v0, p0, Lo/aq$if;->DM:Lo/ai;

    invoke-virtual {v0}, Lo/ai;->ţ()Lo/ᒴ$ˎ;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ˊ(Lo/aq$if;)Lo/ᒴ$ˎ;
    .locals 1

    invoke-direct {p0}, Lo/aq$if;->ţ()Lo/ᒴ$ˎ;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ˊ(Ljava/lang/String;Ljava/lang/String;Lo/ao;)V
    .locals 2

    iget-object v0, p0, Lo/aq$if;->GW:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lo/as;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/as;-><init>(Lo/aq$if;Ljava/lang/String;Ljava/lang/String;Lo/ao;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public ˊ(Ljava/lang/String;Ljava/util/List;Lo/ao;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/util/List<Lcom/google/android/gms/common/api/Scope;>;Lo/ao;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/aq$if;->GW:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lo/ar;

    invoke-direct {v1, p0, p2, p1, p3}, Lo/ar;-><init>(Lo/aq$if;Ljava/util/List;Ljava/lang/String;Lo/ao;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
