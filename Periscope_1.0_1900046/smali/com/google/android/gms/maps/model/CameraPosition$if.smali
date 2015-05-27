.class public final Lcom/google/android/gms/maps/model/CameraPosition$if;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/CameraPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private IJ:Lcom/google/android/gms/maps/model/LatLng;

.field private IK:F

.field private IL:F

.field private IM:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ʽ(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$if;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$if;->IJ:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public ᴵ(F)Lcom/google/android/gms/maps/model/CameraPosition$if;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$if;->IK:F

    return-object p0
.end method

.method public ᵎ(F)Lcom/google/android/gms/maps/model/CameraPosition$if;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$if;->IL:F

    return-object p0
.end method

.method public ᵔ(F)Lcom/google/android/gms/maps/model/CameraPosition$if;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$if;->IM:F

    return-object p0
.end method

.method public Ύ()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 5

    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v1, p0, Lcom/google/android/gms/maps/model/CameraPosition$if;->IJ:Lcom/google/android/gms/maps/model/LatLng;

    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition$if;->IK:F

    iget v3, p0, Lcom/google/android/gms/maps/model/CameraPosition$if;->IL:F

    iget v4, p0, Lcom/google/android/gms/maps/model/CameraPosition$if;->IM:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    return-object v0
.end method
