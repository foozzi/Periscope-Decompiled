.class public Lcom/google/android/gms/maps/internal/zzy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lo/de;


# instance fields
.field private final ID:Landroid/graphics/Point;

.field private final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/de;

    invoke-direct {v0}, Lo/de;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/internal/zzy;->CREATOR:Lo/de;

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/internal/zzy;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/maps/internal/zzy;->ID:Landroid/graphics/Point;

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
    instance-of v0, p1, Lcom/google/android/gms/maps/internal/zzy;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/maps/internal/zzy;

    move-object v2, v0

    iget-object v0, p0, Lcom/google/android/gms/maps/internal/zzy;->ID:Landroid/graphics/Point;

    iget-object v1, v2, Lcom/google/android/gms/maps/internal/zzy;->ID:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/internal/zzy;->ID:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Point;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/internal/zzy;->ID:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/de;->ˊ(Lcom/google/android/gms/maps/internal/zzy;Landroid/os/Parcel;I)V

    return-void
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/internal/zzy;->versionCode:I

    return v0
.end method

.method public Ῠ()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/internal/zzy;->ID:Landroid/graphics/Point;

    return-object v0
.end method