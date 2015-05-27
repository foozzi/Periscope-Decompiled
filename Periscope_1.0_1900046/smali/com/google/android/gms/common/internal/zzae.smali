.class public Lcom/google/android/gms/common/internal/zzae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<Lcom/google/android/gms/common/internal/zzae;>;"
        }
    .end annotation
.end field


# instance fields
.field public final BH:I

.field public final DF:Landroid/os/IBinder;

.field private final DH:I

.field private final DI:[Lcom/google/android/gms/common/api/Scope;

.field private final DJ:Landroid/os/Bundle;

.field private final DK:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/ℷ;

    invoke-direct {v0}, Lo/ℷ;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzae;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILandroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/zzae;->BH:I

    iput p2, p0, Lcom/google/android/gms/common/internal/zzae;->DH:I

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zzae;->DF:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/zzae;->DI:[Lcom/google/android/gms/common/api/Scope;

    iput-object p5, p0, Lcom/google/android/gms/common/internal/zzae;->DJ:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/android/gms/common/internal/zzae;->DK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lo/בֿ;[Lcom/google/android/gms/common/api/Scope;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    move-object v0, p0

    if-nez p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lo/בֿ;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    const/4 v1, 0x1

    const v2, 0x6c42d8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzae;-><init>(IILandroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzae;->DK:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/ℷ;->ˊ(Lcom/google/android/gms/common/internal/zzae;Landroid/os/Parcel;I)V

    return-void
.end method

.method public ᓙ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/zzae;->DH:I

    return v0
.end method

.method public ᔬ()[Lcom/google/android/gms/common/api/Scope;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzae;->DI:[Lcom/google/android/gms/common/api/Scope;

    return-object v0
.end method

.method public ᖧ()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzae;->DJ:Landroid/os/Bundle;

    return-object v0
.end method
