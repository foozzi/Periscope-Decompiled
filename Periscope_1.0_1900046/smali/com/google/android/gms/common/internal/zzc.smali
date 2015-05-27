.class public Lcom/google/android/gms/common/internal/zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<Lcom/google/android/gms/common/internal/zzc;>;"
        }
    .end annotation
.end field


# instance fields
.field public final BH:I

.field public final DF:Landroid/os/IBinder;

.field public final DI:[Lcom/google/android/gms/common/api/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/Ⅱ;

    invoke-direct {v0}, Lo/Ⅱ;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/zzc;->BH:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzc;->DF:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zzc;->DI:[Lcom/google/android/gms/common/api/Scope;

    return-void
.end method

.method public constructor <init>(Lo/בֿ;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb4c;Ljava/util/Set<Lcom/google/android/gms/common/api/Scope;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lo/בֿ;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/common/api/Scope;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/common/internal/zzc;-><init>(ILandroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/Ⅱ;->ˊ(Lcom/google/android/gms/common/internal/zzc;Landroid/os/Parcel;I)V

    return-void
.end method
