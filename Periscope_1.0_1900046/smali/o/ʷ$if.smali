.class Lo/ʷ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ʷ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private final eP:Ljava/util/concurrent/ExecutorService;

.field private final eQ:Ljava/util/concurrent/ExecutorService;

.field private final hA:Lo/Γ;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lo/Γ;)V
    .locals 0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Lo/ʷ$if;->eQ:Ljava/util/concurrent/ExecutorService;

    .line 375
    iput-object p2, p0, Lo/ʷ$if;->eP:Ljava/util/concurrent/ExecutorService;

    .line 376
    iput-object p3, p0, Lo/ʷ$if;->hA:Lo/Γ;

    .line 377
    return-void
.end method


# virtual methods
.method public ˎ(Lo/ﮆ;Z)Lo/ΐ;
    .locals 6

    .line 380
    new-instance v0, Lo/ΐ;

    iget-object v2, p0, Lo/ʷ$if;->eQ:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lo/ʷ$if;->eP:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lo/ʷ$if;->hA:Lo/Γ;

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lo/ΐ;-><init>(Lo/ﮆ;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLo/Γ;)V

    return-object v0
.end method
