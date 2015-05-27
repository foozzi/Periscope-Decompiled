.class public Lo/ҭ;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final lB:Lo/ﾄ;


# instance fields
.field private final lC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Lo/\uff84;Lo/\u0493<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lo/ﾄ;

    invoke-direct {v0}, Lo/ﾄ;-><init>()V

    sput-object v0, Lo/ҭ;->lB:Lo/ﾄ;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ҭ;->lC:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public ʼ(Ljava/lang/Class;Ljava/lang/Class;)Lo/ғ;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:Ljava/lang/Object;R:Ljava/lang/Object;>(Ljava/lang/Class<TZ;>;Ljava/lang/Class<TR;>;)Lo/\u0493<TZ;TR;>;"
        }
    .end annotation

    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lo/Ү;->ٳ()Lo/ғ;

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    sget-object v4, Lo/ҭ;->lB:Lo/ﾄ;

    monitor-enter v4

    .line 49
    :try_start_0
    sget-object v0, Lo/ҭ;->lB:Lo/ﾄ;

    invoke-virtual {v0, p1, p2}, Lo/ﾄ;->ͺ(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 50
    iget-object v0, p0, Lo/ҭ;->lC:Ljava/util/Map;

    sget-object v1, Lo/ҭ;->lB:Lo/ﾄ;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ғ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v0

    .line 51
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5

    .line 52
    :goto_0
    if-nez v3, :cond_1

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No transcoder registered for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    return-object v3
.end method

.method public ˊ(Ljava/lang/Class;Ljava/lang/Class;Lo/ғ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:Ljava/lang/Object;R:Ljava/lang/Object;>(Ljava/lang/Class<TZ;>;Ljava/lang/Class<TR;>;Lo/\u0493<TZ;TR;>;)V"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lo/ҭ;->lC:Ljava/util/Map;

    new-instance v1, Lo/ﾄ;

    invoke-direct {v1, p1, p2}, Lo/ﾄ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method
