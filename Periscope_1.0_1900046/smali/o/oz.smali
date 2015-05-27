.class final Lo/oz;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final Um:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/oz;>;"
        }
    .end annotation
.end field


# instance fields
.field Uf:Lo/pe;

.field Ug:Ljava/lang/Object;

.field Un:Lo/oz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lo/oz;->Um:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lo/pe;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lo/oz;->Ug:Ljava/lang/Object;

    .line 30
    iput-object p2, p0, Lo/oz;->Uf:Lo/pe;

    .line 31
    return-void
.end method

.method static ˋ(Lo/oz;)V
    .locals 4

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lo/oz;->Ug:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lo/oz;->Uf:Lo/pe;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lo/oz;->Un:Lo/oz;

    .line 51
    sget-object v2, Lo/oz;->Um:Ljava/util/List;

    monitor-enter v2

    .line 53
    :try_start_0
    sget-object v0, Lo/oz;->Um:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    .line 54
    sget-object v0, Lo/oz;->Um:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 57
    :goto_0
    return-void
.end method

.method static ˎ(Lo/pe;Ljava/lang/Object;)Lo/oz;
    .locals 6

    .line 34
    sget-object v2, Lo/oz;->Um:Ljava/util/List;

    monitor-enter v2

    .line 35
    :try_start_0
    sget-object v0, Lo/oz;->Um:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 36
    if-lez v3, :cond_0

    .line 37
    sget-object v0, Lo/oz;->Um:Ljava/util/List;

    add-int/lit8 v1, v3, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/oz;

    move-object v4, v0

    .line 38
    iput-object p1, v4, Lo/oz;->Ug:Ljava/lang/Object;

    .line 39
    iput-object p0, v4, Lo/oz;->Uf:Lo/pe;

    .line 40
    const/4 v0, 0x0

    iput-object v0, v4, Lo/oz;->Un:Lo/oz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit v2

    return-object v4

    .line 43
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v2

    throw v5

    .line 44
    :goto_0
    new-instance v0, Lo/oz;

    invoke-direct {v0, p1, p0}, Lo/oz;-><init>(Ljava/lang/Object;Lo/pe;)V

    return-object v0
.end method
