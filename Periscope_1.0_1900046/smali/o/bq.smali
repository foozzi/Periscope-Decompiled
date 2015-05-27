.class public Lo/bq;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/bq$ˊ;,
        Lo/bq$if;
    }
.end annotation


# instance fields
.field private final Ii:Lo/bq$ˊ;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lo/bq$ˊ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lo/bq$ˊ;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    iput-object v0, p0, Lo/bq;->Ii:Lo/bq$ˊ;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lo/bq$ˊ;

    invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->ˋ(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lo/bq$ˊ;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    iput-object v0, p0, Lo/bq;->Ii:Lo/bq$ˊ;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lo/bq$ˊ;

    invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->ˋ(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lo/bq$ˊ;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    iput-object v0, p0, Lo/bq;->Ii:Lo/bq$ˊ;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lo/bq;->Ii:Lo/bq$ˊ;

    invoke-virtual {v0, p1}, Lo/bq$ˊ;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lo/bq;->Ii:Lo/bq$ˊ;

    invoke-virtual {v0}, Lo/bq$ˊ;->ァ()Lo/ﭖ;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lo/ﭴ;->ˊ(Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lo/bq;->Ii:Lo/bq$ˊ;

    invoke-virtual {v0}, Lo/bq$ˊ;->onDestroy()V

    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    iget-object v0, p0, Lo/bq;->Ii:Lo/bq$ˊ;

    invoke-virtual {v0}, Lo/bq$ˊ;->onLowMemory()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lo/bq;->Ii:Lo/bq$ˊ;

    invoke-virtual {v0}, Lo/bq$ˊ;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    iget-object v0, p0, Lo/bq;->Ii:Lo/bq$ˊ;

    invoke-virtual {v0}, Lo/bq$ˊ;->onResume()V

    return-void
.end method

.method public ˊ(Lo/bt;)V
    .locals 1

    const-string v0, "getMapAsync() must be called on the main thread"

    invoke-static {v0}, Lo/ﺧ;->ᐪ(Ljava/lang/String;)V

    iget-object v0, p0, Lo/bq;->Ii:Lo/bq$ˊ;

    invoke-virtual {v0, p1}, Lo/bq$ˊ;->ˊ(Lo/bt;)V

    return-void
.end method
