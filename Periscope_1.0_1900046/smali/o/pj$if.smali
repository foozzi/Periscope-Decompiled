.class public Lo/pj$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/pj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private UO:Lo/pn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/pn<Lo/pj;>;"
        }
    .end annotation
.end field

.field private UT:Lo/ps;

.field private UU:Z

.field private UY:[Lo/pq;

.field private UZ:Lo/ro;

.field private Va:Ljava/lang/String;

.field private Vb:Ljava/lang/String;

.field private final dV:Landroid/content/Context;

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/pj$if;->dV:Landroid/content/Context;

    .line 78
    return-void
.end method


# virtual methods
.method public cf()Lo/pj;
    .locals 11

    .line 208
    iget-object v0, p0, Lo/pj$if;->UY:[Lo/pq;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Kits must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    iget-object v0, p0, Lo/pj$if;->UZ:Lo/ro;

    if-nez v0, :cond_1

    .line 213
    invoke-static {}, Lo/ro;->cX()Lo/ro;

    move-result-object v0

    iput-object v0, p0, Lo/pj$if;->UZ:Lo/ro;

    .line 216
    :cond_1
    iget-object v0, p0, Lo/pj$if;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 217
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/pj$if;->handler:Landroid/os/Handler;

    .line 220
    :cond_2
    iget-object v0, p0, Lo/pj$if;->UT:Lo/ps;

    if-nez v0, :cond_4

    .line 221
    iget-boolean v0, p0, Lo/pj$if;->UU:Z

    if-eqz v0, :cond_3

    .line 222
    new-instance v0, Lo/pi;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lo/pi;-><init>(I)V

    iput-object v0, p0, Lo/pj$if;->UT:Lo/ps;

    goto :goto_0

    .line 224
    :cond_3
    new-instance v0, Lo/pi;

    invoke-direct {v0}, Lo/pi;-><init>()V

    iput-object v0, p0, Lo/pj$if;->UT:Lo/ps;

    .line 229
    :cond_4
    :goto_0
    iget-object v0, p0, Lo/pj$if;->Vb:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 230
    iget-object v0, p0, Lo/pj$if;->dV:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/pj$if;->Vb:Ljava/lang/String;

    .line 233
    :cond_5
    iget-object v0, p0, Lo/pj$if;->UO:Lo/pn;

    if-nez v0, :cond_6

    .line 234
    sget-object v0, Lo/pn;->Ve:Lo/pn;

    iput-object v0, p0, Lo/pj$if;->UO:Lo/pn;

    .line 237
    :cond_6
    iget-object v0, p0, Lo/pj$if;->UY:[Lo/pq;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lo/pj;->ˎ(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v9

    .line 239
    new-instance v10, Lo/qr;

    iget-object v0, p0, Lo/pj$if;->dV:Landroid/content/Context;

    iget-object v1, p0, Lo/pj$if;->Vb:Ljava/lang/String;

    iget-object v2, p0, Lo/pj$if;->Va:Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v10, v0, v1, v2, v3}, Lo/qr;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 242
    new-instance v0, Lo/pj;

    iget-object v1, p0, Lo/pj$if;->dV:Landroid/content/Context;

    iget-object v3, p0, Lo/pj$if;->UZ:Lo/ro;

    iget-object v4, p0, Lo/pj$if;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lo/pj$if;->UT:Lo/ps;

    iget-boolean v6, p0, Lo/pj$if;->UU:Z

    iget-object v7, p0, Lo/pj$if;->UO:Lo/pn;

    move-object v2, v9

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lo/pj;-><init>(Landroid/content/Context;Ljava/util/Map;Lo/ro;Landroid/os/Handler;Lo/ps;ZLo/pn;Lo/qr;)V

    return-object v0
.end method

.method public varargs ˊ([Lo/pq;)Lo/pj$if;
    .locals 2

    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Kits must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Kits must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    iget-object v0, p0, Lo/pj$if;->UY:[Lo/pq;

    if-eqz v0, :cond_2

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Kits already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_2
    iput-object p1, p0, Lo/pj$if;->UY:[Lo/pq;

    .line 95
    return-object p0
.end method
