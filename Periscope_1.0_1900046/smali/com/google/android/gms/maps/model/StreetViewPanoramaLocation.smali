.class public Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lo/eq;


# instance fields
.field private final BH:I

.field public final Jt:Ljava/lang/String;

.field public final Ju:[Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;

.field public final Jv:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/eq;

    invoke-direct {v0}, Lo/eq;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->CREATOR:Lo/eq;

    return-void
.end method

.method public constructor <init>(I[Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->BH:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->Ju:[Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->Jv:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p4, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->Jt:Ljava/lang/String;

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
    instance-of v0, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;

    move-object v2, v0

    iget-object v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->Jt:Ljava/lang/String;

    iget-object v1, v2, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->Jt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->Jv:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, v2, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->Jv:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

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

    iget-object v1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->Jv:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->Jt:Ljava/lang/String;

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

    const-string v1, "panoId"

    iget-object v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->Jt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/ﺟ$if;->ˊ(Ljava/lang/String;Ljava/lang/Object;)Lo/ﺟ$if;

    move-result-object v0

    const-string v1, "position"

    iget-object v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->Jv:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/LatLng;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/ﺟ$if;->ˊ(Ljava/lang/String;Ljava/lang/Object;)Lo/ﺟ$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/ﺟ$if;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/eq;->ˊ(Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;Landroid/os/Parcel;I)V

    return-void
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->BH:I

    return v0
.end method
