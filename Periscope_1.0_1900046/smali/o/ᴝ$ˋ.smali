.class Lo/ᴝ$ˋ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᴝ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02cb"
.end annotation


# instance fields
.field private final DA:I

.field private final DB:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic DC:Lo/ᴝ;


# direct methods
.method public constructor <init>(Lo/ᴝ;ILcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lo/ᴝ$ˋ;->DC:Lo/ᴝ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lo/ᴝ$ˋ;->DA:I

    iput-object p3, p0, Lo/ᴝ$ˋ;->DB:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lo/ᴝ$ˋ;->DB:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->Դ()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lo/ᴝ$ˋ;->DC:Lo/ᴝ;

    invoke-virtual {v0}, Lo/ᴝ;->getActivity()Lo/ι;

    move-result-object v0

    invoke-virtual {v0}, Lo/ι;->getSupportFragmentManager()Lo/ˈ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ˈ;->ˎ()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lo/ᴝ$ˋ;->DC:Lo/ᴝ;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v6, v0, 0x1

    iget-object v0, p0, Lo/ᴝ$ˋ;->DB:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lo/ᴝ$ˋ;->DC:Lo/ᴝ;

    invoke-virtual {v1}, Lo/ᴝ;->getActivity()Lo/ι;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/common/ConnectionResult;->ˊ(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    iget-object v0, p0, Lo/ᴝ$ˋ;->DC:Lo/ᴝ;

    invoke-static {v0}, Lo/ᴝ;->ˊ(Lo/ᴝ;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ᴝ$ˋ;->DB:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Lo/ძ;->ذ(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ᴝ$ˋ;->DB:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    iget-object v1, p0, Lo/ᴝ$ˋ;->DC:Lo/ᴝ;

    invoke-virtual {v1}, Lo/ᴝ;->getActivity()Lo/ι;

    move-result-object v1

    iget-object v2, p0, Lo/ᴝ$ˋ;->DC:Lo/ᴝ;

    iget-object v3, p0, Lo/ᴝ$ˋ;->DC:Lo/ᴝ;

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v4, v3}, Lo/ძ;->ˋ(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/ᴝ$ˋ;->DC:Lo/ᴝ;

    iget v1, p0, Lo/ᴝ$ˋ;->DA:I

    iget-object v2, p0, Lo/ᴝ$ˋ;->DB:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1, v2}, Lo/ᴝ;->ˊ(Lo/ᴝ;ILcom/google/android/gms/common/ConnectionResult;)V

    :goto_0
    return-void
.end method
