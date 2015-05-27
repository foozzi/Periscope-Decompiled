.class public Lcom/google/android/gms/internal/zzuw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<Lcom/google/android/gms/internal/zzuw;>;"
        }
    .end annotation
.end field


# instance fields
.field public final BH:I

.field public final GU:Z

.field public final GV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lcom/google/android/gms/common/api/Scope;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/al;

    invoke-direct {v0}, Lo/al;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzuw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZLjava/util/List<Lcom/google/android/gms/common/api/Scope;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzuw;->BH:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzuw;->GU:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzuw;->GV:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ZLjava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZLjava/util/Set<Lcom/google/android/gms/common/api/Scope;>;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/zzuw;->ˊ(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/gms/internal/zzuw;-><init>(IZLjava/util/List;)V

    return-void
.end method

.method private static ˊ(Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Set<Lcom/google/android/gms/common/api/Scope;>;)Ljava/util/List<Lcom/google/android/gms/common/api/Scope;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/al;->ˊ(Lcom/google/android/gms/internal/zzuw;Landroid/os/Parcel;I)V

    return-void
.end method
