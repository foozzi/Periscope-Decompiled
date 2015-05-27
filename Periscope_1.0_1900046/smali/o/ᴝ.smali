.class public Lo/ᴝ;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lo/ٴ$if;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᴝ$1;,
        Lo/ᴝ$if;,
        Lo/ᴝ$ˊ;,
        Lo/ᴝ$ˋ;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;Landroid/content/DialogInterface$OnCancelListener;Lo/\u0674$if<Lcom/google/android/gms/common/ConnectionResult;>;"
    }
.end annotation


# instance fields
.field private Dr:Z

.field private Ds:I

.field private Dt:Lcom/google/android/gms/common/ConnectionResult;

.field private final Du:Landroid/os/Handler;

.field private final Dv:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<Lo/\u1d1d$\u02ca;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lo/ᴝ;->Ds:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/ᴝ;->Du:Landroid/os/Handler;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lo/ᴝ;->Dv:Landroid/util/SparseArray;

    return-void
.end method

.method private ˊ(ILcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-boolean v0, p0, Lo/ᴝ;->Dr:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᴝ;->Dr:Z

    iput p1, p0, Lo/ᴝ;->Ds:I

    iput-object p2, p0, Lo/ᴝ;->Dt:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lo/ᴝ;->Du:Landroid/os/Handler;

    new-instance v1, Lo/ᴝ$ˋ;

    invoke-direct {v1, p0, p1, p2}, Lo/ᴝ$ˋ;-><init>(Lo/ᴝ;ILcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic ˊ(Lo/ᴝ;)V
    .locals 0

    invoke-direct {p0}, Lo/ᴝ;->ᒏ()V

    return-void
.end method

.method static synthetic ˊ(Lo/ᴝ;ILcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/ᴝ;->ˋ(ILcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method private ˋ(ILcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    const-string v0, "GmsSupportLifecycleFragment"

    const-string v1, "Unresolved error while connecting client. Stopping auto-manage."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lo/ᴝ;->Dv:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴝ$ˊ;

    move-object v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lo/ᴝ;->ᓑ(I)V

    iget-object v3, v2, Lo/ᴝ$ˊ;->Dz:Lo/ᒴ$ˋ;

    if-eqz v3, :cond_0

    invoke-interface {v3, p2}, Lo/ᒴ$ˋ;->ˊ(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_0
    invoke-direct {p0}, Lo/ᴝ;->ᒏ()V

    return-void
.end method

.method public static ˎ(Lo/ι;)Lo/ᴝ;
    .locals 5

    const-string v0, "Must be called from main thread of process"

    invoke-static {v0}, Lo/ﺧ;->ᐪ(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/ι;->getSupportFragmentManager()Lo/ˈ;

    move-result-object v3

    const-string v0, "GmsSupportLifecycleFragment"

    :try_start_0
    invoke-virtual {v3, v0}, Lo/ˈ;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/ᴝ;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment with tag GmsSupportLifecycleFragment is not a SupportLifecycleFragment"

    invoke-direct {v0, v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lo/ᴝ;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v2, Lo/ᴝ;

    invoke-direct {v2}, Lo/ᴝ;-><init>()V

    invoke-virtual {v3}, Lo/ˈ;->ˋ()Lo/ᐨ;

    move-result-object v0

    const-string v1, "GmsSupportLifecycleFragment"

    invoke-virtual {v0, v2, v1}, Lo/ᐨ;->ˊ(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Lo/ᐨ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᐨ;->commit()I

    invoke-virtual {v3}, Lo/ˈ;->executePendingTransactions()Z

    :cond_1
    return-object v2
.end method

.method private ᒏ()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᴝ;->Dr:Z

    const/4 v0, -0x1

    iput v0, p0, Lo/ᴝ;->Ds:I

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᴝ;->Dt:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0}, Lo/ᴝ;->getLoaderManager()Lo/ٴ;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lo/ᴝ;->Dv:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lo/ᴝ;->Dv:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lo/ᴝ;->ᔆ(I)Lo/ᴝ$if;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lo/ᴝ$if;->ᒰ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v3}, Lo/ٴ;->destroyLoader(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v3, v0, p0}, Lo/ٴ;->ˊ(ILandroid/os/Bundle;Lo/ٴ$if;)Lo/יּ;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lo/ᴝ;->getActivity()Lo/ι;

    move-result-object v0

    invoke-static {v0}, Lo/ძ;->ٴ(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-direct {p0}, Lo/ᴝ;->ᒏ()V

    goto :goto_1

    :cond_1
    iget v0, p0, Lo/ᴝ;->Ds:I

    iget-object v1, p0, Lo/ᴝ;->Dt:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0, v1}, Lo/ᴝ;->ˋ(ILcom/google/android/gms/common/ConnectionResult;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lo/ᴝ;->Dv:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lo/ᴝ;->Dv:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lo/ᴝ;->ᔆ(I)Lo/ᴝ$if;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lo/ᴝ;->Dv:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴝ$ˊ;

    move-object v5, v0

    iget-object v0, v5, Lo/ᴝ$ˊ;->Dw:Lo/ᒴ;

    iget-object v1, v4, Lo/ᴝ$if;->Dw:Lo/ᒴ;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lo/ᴝ;->getLoaderManager()Lo/ٴ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, p0}, Lo/ٴ;->ˋ(ILandroid/os/Bundle;Lo/ٴ$if;)Lo/יּ;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lo/ᴝ;->getLoaderManager()Lo/ٴ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, p0}, Lo/ٴ;->ˊ(ILandroid/os/Bundle;Lo/ٴ$if;)Lo/יּ;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget v0, p0, Lo/ᴝ;->Ds:I

    iget-object v1, p0, Lo/ᴝ;->Dt:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0, v1}, Lo/ᴝ;->ˋ(ILcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "resolving_error"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lo/ᴝ;->Dr:Z

    const-string v0, "failed_client_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lo/ᴝ;->Ds:I

    iget v0, p0, Lo/ᴝ;->Ds:I

    if-ltz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const-string v1, "failed_status"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "failed_resolution"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iput-object v0, p0, Lo/ᴝ;->Dt:Lcom/google/android/gms/common/ConnectionResult;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "resolving_error"

    iget-boolean v1, p0, Lo/ᴝ;->Dr:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, p0, Lo/ᴝ;->Ds:I

    if-ltz v0, :cond_0

    const-string v0, "failed_client_id"

    iget v1, p0, Lo/ᴝ;->Ds:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "failed_status"

    iget-object v1, p0, Lo/ᴝ;->Dt:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "failed_resolution"

    iget-object v1, p0, Lo/ᴝ;->Dt:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->ט()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    iget-boolean v0, p0, Lo/ᴝ;->Dr:Z

    if-nez v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lo/ᴝ;->Dv:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-virtual {p0}, Lo/ᴝ;->getLoaderManager()Lo/ٴ;

    move-result-object v0

    iget-object v1, p0, Lo/ᴝ;->Dv:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lo/ٴ;->ˊ(ILandroid/os/Bundle;Lo/ٴ$if;)Lo/יּ;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ˊ(ILandroid/os/Bundle;)Lo/יּ;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ILandroid/os/Bundle;)Lo/\ufb39<Lcom/google/android/gms/common/ConnectionResult;>;"
        }
    .end annotation

    new-instance v0, Lo/ᴝ$if;

    invoke-virtual {p0}, Lo/ᴝ;->getActivity()Lo/ι;

    move-result-object v1

    iget-object v2, p0, Lo/ᴝ;->Dv:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ᴝ$ˊ;

    iget-object v2, v2, Lo/ᴝ$ˊ;->Dw:Lo/ᒴ;

    invoke-direct {v0, v1, v2}, Lo/ᴝ$if;-><init>(Landroid/content/Context;Lo/ᒴ;)V

    return-object v0
.end method

.method public ˊ(ILo/ᒴ;Lo/ᒴ$ˋ;)V
    .locals 4

    const-string v0, "GoogleApiClient instance cannot be null"

    invoke-static {p2, v0}, Lo/ﺧ;->ʼ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lo/ᴝ;->Dv:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already managing a GoogleApiClient with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ﺧ;->ˎ(ZLjava/lang/Object;)V

    new-instance v3, Lo/ᴝ$ˊ;

    const/4 v0, 0x0

    invoke-direct {v3, p2, p3, v0}, Lo/ᴝ$ˊ;-><init>(Lo/ᒴ;Lo/ᒴ$ˋ;Lo/ᴝ$1;)V

    iget-object v0, p0, Lo/ᴝ;->Dv:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lo/ᴝ;->getActivity()Lo/ι;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lo/ٴ;->enableDebugLogging(Z)V

    invoke-virtual {p0}, Lo/ᴝ;->getLoaderManager()Lo/ٴ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Lo/ٴ;->ˊ(ILandroid/os/Bundle;Lo/ٴ$if;)Lo/יּ;

    :cond_1
    return-void
.end method

.method public ˊ(Lo/יּ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb39<Lcom/google/android/gms/common/ConnectionResult;>;)V"
        }
    .end annotation

    return-void
.end method

.method public ˊ(Lo/יּ;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb39<Lcom/google/android/gms/common/ConnectionResult;>;Lcom/google/android/gms/common/ConnectionResult;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->չ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lo/יּ;->getId()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lo/ᴝ;->ˊ(ILcom/google/android/gms/common/ConnectionResult;)V

    :cond_0
    return-void
.end method

.method public synthetic ˊ(Lo/יּ;Ljava/lang/Object;)V
    .locals 1

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, p1, v0}, Lo/ᴝ;->ˊ(Lo/יּ;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public ᒼ(I)Lo/ᒴ;
    .locals 2

    invoke-virtual {p0}, Lo/ᴝ;->getActivity()Lo/ι;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lo/ᴝ;->ᔆ(I)Lo/ᴝ$if;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lo/ᴝ$if;->Dw:Lo/ᒴ;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ᓑ(I)V
    .locals 1

    iget-object v0, p0, Lo/ᴝ;->Dv:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0}, Lo/ᴝ;->getLoaderManager()Lo/ٴ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ٴ;->destroyLoader(I)V

    return-void
.end method

.method ᔆ(I)Lo/ᴝ$if;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lo/ᴝ;->getLoaderManager()Lo/ٴ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ٴ;->ʽ(I)Lo/יּ;

    move-result-object v0

    check-cast v0, Lo/ᴝ$if;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown loader in SupportLifecycleFragment"

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
