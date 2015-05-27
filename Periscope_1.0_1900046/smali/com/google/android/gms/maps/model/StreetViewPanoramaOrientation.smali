.class public Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$if;
    }
.end annotation


# static fields
.field public static final CREATOR:Lo/er;


# instance fields
.field private final BH:I

.field public final IH:F

.field public final II:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/er;

    invoke-direct {v0}, Lo/er;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->CREATOR:Lo/er;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;-><init>(IFF)V

    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x3d4c0000    # -90.0f

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Tilt needs to be between -90 and 90 inclusive"

    invoke-static {v0, v1}, Lo/ﺧ;->ˏ(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->BH:I

    const/4 v0, 0x0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->IH:F

    float-to-double v0, p3

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float v0, p3, v0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->II:F

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
    instance-of v0, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    move-object v2, v0

    iget v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->IH:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, v2, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->IH:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->II:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, v2, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->II:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->IH:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->II:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/ﺟ;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lo/ﺟ;->ᔇ(Ljava/lang/Object;)Lo/ﺟ$if;

    move-result-object v0

    const-string v1, "tilt"

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->IH:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/ﺟ$if;->ˊ(Ljava/lang/String;Ljava/lang/Object;)Lo/ﺟ$if;

    move-result-object v0

    const-string v1, "bearing"

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->II:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/ﺟ$if;->ˊ(Ljava/lang/String;Ljava/lang/Object;)Lo/ﺟ$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/ﺟ$if;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/er;->ˊ(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;Landroid/os/Parcel;I)V

    return-void
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->BH:I

    return v0
.end method
