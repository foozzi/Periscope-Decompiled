.class public Lo/ᓼ;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final lB:Lo/ﾄ;


# instance fields
.field private final mb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Lo/\uff84;Lo/\u14f9<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lo/ﾄ;

    invoke-direct {v0}, Lo/ﾄ;-><init>()V

    sput-object v0, Lo/ᓼ;->lB:Lo/ﾄ;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ᓼ;->mb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public ʽ(Ljava/lang/Class;Ljava/lang/Class;)Lo/ᓹ;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;Z:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/Class<TZ;>;)Lo/\u14f9<TT;TZ;>;"
        }
    .end annotation

    .line 44
    sget-object v3, Lo/ᓼ;->lB:Lo/ﾄ;

    monitor-enter v3

    .line 45
    :try_start_0
    sget-object v0, Lo/ᓼ;->lB:Lo/ﾄ;

    invoke-virtual {v0, p1, p2}, Lo/ﾄ;->ͺ(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 46
    iget-object v0, p0, Lo/ᓼ;->mb:Ljava/util/Map;

    sget-object v1, Lo/ᓼ;->lB:Lo/ﾄ;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᓹ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    .line 47
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 48
    :goto_0
    if-nez v2, :cond_0

    .line 49
    invoke-static {}, Lo/ᓽ;->ᓶ()Lo/ᓹ;

    move-result-object v2

    .line 51
    :cond_0
    return-object v2
.end method

.method public ˊ(Ljava/lang/Class;Ljava/lang/Class;Lo/ᓹ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;Z:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/Class<TZ;>;Lo/\u14f9<TT;TZ;>;)V"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lo/ᓼ;->mb:Ljava/util/Map;

    new-instance v1, Lo/ﾄ;

    invoke-direct {v1, p1, p2}, Lo/ﾄ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method
