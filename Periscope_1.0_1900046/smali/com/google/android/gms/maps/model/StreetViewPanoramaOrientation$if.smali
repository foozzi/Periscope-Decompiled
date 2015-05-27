.class public final Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$if;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field public IH:F

.field public II:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ᵢ(F)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$if;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$if;->IH:F

    return-object p0
.end method

.method public ⁱ(F)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$if;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$if;->II:F

    return-object p0
.end method

.method public ﭸ()Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
    .locals 3

    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    iget v1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$if;->IH:F

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$if;->II:F

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;-><init>(FF)V

    return-object v0
.end method
