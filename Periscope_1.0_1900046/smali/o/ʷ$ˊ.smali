.class Lo/ʷ$ˊ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ʕ$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ʷ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation


# instance fields
.field private final hB:Lo/ᓳ$if;

.field private volatile hC:Lo/ᓳ;


# direct methods
.method public constructor <init>(Lo/ᓳ$if;)V
    .locals 0

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lo/ʷ$ˊ;->hB:Lo/ᓳ$if;

    .line 317
    return-void
.end method


# virtual methods
.method public ڗ()Lo/ᓳ;
    .locals 3

    .line 321
    iget-object v0, p0, Lo/ʷ$ˊ;->hC:Lo/ᓳ;

    if-nez v0, :cond_2

    .line 322
    move-object v1, p0

    monitor-enter v1

    .line 323
    :try_start_0
    iget-object v0, p0, Lo/ʷ$ˊ;->hC:Lo/ᓳ;

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lo/ʷ$ˊ;->hB:Lo/ᓳ$if;

    invoke-interface {v0}, Lo/ᓳ$if;->ᵐ()Lo/ᓳ;

    move-result-object v0

    iput-object v0, p0, Lo/ʷ$ˊ;->hC:Lo/ᓳ;

    .line 326
    :cond_0
    iget-object v0, p0, Lo/ʷ$ˊ;->hC:Lo/ᓳ;

    if-nez v0, :cond_1

    .line 327
    new-instance v0, Lo/ᘄ;

    invoke-direct {v0}, Lo/ᘄ;-><init>()V

    iput-object v0, p0, Lo/ʷ$ˊ;->hC:Lo/ᓳ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 331
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/ʷ$ˊ;->hC:Lo/ᓳ;

    return-object v0
.end method
