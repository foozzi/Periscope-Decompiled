.class Lo/abl$ʽ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02bd"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private bwA:Z

.field private bwB:Lo/abl$ʼ;

.field private bwz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1657
    const-string v0, "GLThreadManager"

    sput-object v0, Lo/abl$ʽ;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/abl$1;)V
    .locals 0

    .line 1656
    invoke-direct {p0}, Lo/abl$ʽ;-><init>()V

    return-void
.end method

.method private wq()V
    .locals 1

    .line 1721
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/abl$ʽ;->bwA:Z

    .line 1722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/abl$ʽ;->bwz:Z

    .line 1723
    return-void
.end method


# virtual methods
.method public declared-synchronized wo()Z
    .locals 2

    monitor-enter p0

    .line 1712
    :try_start_0
    iget-boolean v0, p0, Lo/abl$ʽ;->bwA:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized wp()Z
    .locals 2

    monitor-enter p0

    .line 1716
    :try_start_0
    invoke-direct {p0}, Lo/abl$ʽ;->wq()V

    .line 1717
    iget-boolean v0, p0, Lo/abl$ʽ;->bwz:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized ˊ(Lo/abl$ʼ;)V
    .locals 1

    monitor-enter p0

    .line 1663
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lo/abl$ʼ;->ˊ(Lo/abl$ʼ;Z)Z

    .line 1664
    iget-object v0, p0, Lo/abl$ʽ;->bwB:Lo/abl$ʼ;

    if-ne v0, p1, :cond_0

    .line 1665
    const/4 v0, 0x0

    iput-object v0, p0, Lo/abl$ʽ;->bwB:Lo/abl$ʼ;

    .line 1667
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1668
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public ˋ(Lo/abl$ʼ;)Z
    .locals 1

    .line 1678
    iget-object v0, p0, Lo/abl$ʽ;->bwB:Lo/abl$ʼ;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lo/abl$ʽ;->bwB:Lo/abl$ʼ;

    if-nez v0, :cond_1

    .line 1679
    :cond_0
    iput-object p1, p0, Lo/abl$ʽ;->bwB:Lo/abl$ʼ;

    .line 1680
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1681
    const/4 v0, 0x1

    return v0

    .line 1683
    :cond_1
    invoke-direct {p0}, Lo/abl$ʽ;->wq()V

    .line 1684
    iget-boolean v0, p0, Lo/abl$ʽ;->bwz:Z

    if-eqz v0, :cond_2

    .line 1685
    const/4 v0, 0x1

    return v0

    .line 1691
    :cond_2
    iget-object v0, p0, Lo/abl$ʽ;->bwB:Lo/abl$ʼ;

    if-eqz v0, :cond_3

    .line 1692
    iget-object v0, p0, Lo/abl$ʽ;->bwB:Lo/abl$ʼ;

    invoke-virtual {v0}, Lo/abl$ʼ;->wn()V

    .line 1694
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public ˎ(Lo/abl$ʼ;)V
    .locals 1

    .line 1702
    iget-object v0, p0, Lo/abl$ʽ;->bwB:Lo/abl$ʼ;

    if-ne v0, p1, :cond_0

    .line 1703
    const/4 v0, 0x0

    iput-object v0, p0, Lo/abl$ʽ;->bwB:Lo/abl$ʼ;

    .line 1705
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1706
    return-void
.end method
