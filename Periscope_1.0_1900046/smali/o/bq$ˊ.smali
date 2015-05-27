.class Lo/bq$ˊ;
.super Lo/ﭴ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\ufb74<Lo/bq$if;>;"
    }
.end annotation


# instance fields
.field private final Io:Landroid/view/ViewGroup;

.field protected Ip:Lo/ﺙ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufe99<Lo/bq$if;>;"
        }
    .end annotation
.end field

.field private final Iq:Lcom/google/android/gms/maps/GoogleMapOptions;

.field private final Ir:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/bt;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .locals 1

    invoke-direct {p0}, Lo/ﭴ;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/bq$ˊ;->Ir:Ljava/util/List;

    iput-object p1, p0, Lo/bq$ˊ;->Io:Landroid/view/ViewGroup;

    iput-object p2, p0, Lo/bq$ˊ;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lo/bq$ˊ;->Iq:Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method


# virtual methods
.method public ˊ(Lo/bt;)V
    .locals 1

    invoke-virtual {p0}, Lo/bq$ˊ;->ァ()Lo/ﭖ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/bq$ˊ;->ァ()Lo/ﭖ;

    move-result-object v0

    check-cast v0, Lo/bq$if;

    invoke-virtual {v0, p1}, Lo/bq$if;->ˊ(Lo/bt;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/bq$ˊ;->Ir:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected ˊ(Lo/ﺙ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufe99<Lo/bq$if;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lo/bq$ˊ;->Ip:Lo/ﺙ;

    invoke-virtual {p0}, Lo/bq$ˊ;->ٽ()V

    return-void
.end method

.method public ٽ()V
    .locals 6

    iget-object v0, p0, Lo/bq$ˊ;->Ip:Lo/ﺙ;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/bq$ˊ;->ァ()Lo/ﭖ;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lo/bq$ˊ;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lo/dd;->ｰ(Landroid/content/Context;)Lo/cj;

    move-result-object v0

    iget-object v1, p0, Lo/bq$ˊ;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lo/ﱡ;->ᗮ(Ljava/lang/Object;)Lo/ﱟ;

    move-result-object v1

    iget-object v2, p0, Lo/bq$ˊ;->Iq:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-interface {v0, v1, v2}, Lo/cj;->ˊ(Lo/ﱟ;Lcom/google/android/gms/maps/GoogleMapOptions;)Lo/bz;

    move-result-object v3

    iget-object v0, p0, Lo/bq$ˊ;->Ip:Lo/ﺙ;

    new-instance v1, Lo/bq$if;

    iget-object v2, p0, Lo/bq$ˊ;->Io:Landroid/view/ViewGroup;

    invoke-direct {v1, v2, v3}, Lo/bq$if;-><init>(Landroid/view/ViewGroup;Lo/bz;)V

    invoke-interface {v0, v1}, Lo/ﺙ;->ˊ(Lo/ﭖ;)V

    iget-object v0, p0, Lo/bq$ˊ;->Ir:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/bt;

    move-object v5, v0

    invoke-virtual {p0}, Lo/bq$ˊ;->ァ()Lo/ﭖ;

    move-result-object v0

    check-cast v0, Lo/bq$if;

    invoke-virtual {v0, v5}, Lo/bq$if;->ˊ(Lo/bt;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/bq$ˊ;->Ir:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lo/Ⴡ; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v0, Lo/di;

    invoke-direct {v0, v3}, Lo/di;-><init>(Landroid/os/RemoteException;)V

    throw v0

    :catch_1
    move-exception v3

    :cond_1
    :goto_1
    return-void
.end method
