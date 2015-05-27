.class public Lcom/google/android/gms/common/internal/zzaa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<Lcom/google/android/gms/common/internal/zzaa;>;"
        }
    .end annotation
.end field


# instance fields
.field public final BH:I

.field public DF:Landroid/os/IBinder;

.field private DG:Z

.field private Dc:Z

.field private Dy:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/ọ;

    invoke-direct {v0}, Lo/ọ;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzaa;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/internal/zzaa;-><init>(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/common/ConnectionResult;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/zzaa;->BH:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzaa;->DF:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zzaa;->Dy:Lcom/google/android/gms/common/ConnectionResult;

    iput-boolean p4, p0, Lcom/google/android/gms/common/internal/zzaa;->Dc:Z

    iput-boolean p5, p0, Lcom/google/android/gms/common/internal/zzaa;->DG:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 6

    move-object v0, p0

    move-object v3, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/zzaa;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/common/ConnectionResult;ZZ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/common/internal/zzaa;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/internal/zzaa;

    move-object v2, v0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzaa;->Dy:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, v2, Lcom/google/android/gms/common/internal/zzaa;->Dy:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzaa;->ᒴ()Lo/בֿ;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzaa;->ᒴ()Lo/בֿ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/ọ;->ˊ(Lcom/google/android/gms/common/internal/zzaa;Landroid/os/Parcel;I)V

    return-void
.end method

.method public ᒴ()Lo/בֿ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzaa;->DF:Landroid/os/IBinder;

    invoke-static {v0}, Lo/בֿ$if;->ˎ(Landroid/os/IBinder;)Lo/בֿ;

    move-result-object v0

    return-object v0
.end method

.method public ᒵ()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzaa;->Dy:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method public ᒸ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zzaa;->Dc:Z

    return v0
.end method

.method public ᒹ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zzaa;->DG:Z

    return v0
.end method
