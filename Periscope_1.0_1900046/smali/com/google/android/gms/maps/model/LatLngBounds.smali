.class public final Lcom/google/android/gms/maps/model/LatLngBounds;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lo/ee;


# instance fields
.field private final BH:I

.field public final Je:Lcom/google/android/gms/maps/model/LatLng;

.field public final Jf:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/ee;

    invoke-direct {v0}, Lo/ee;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lo/ee;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null southwest"

    invoke-static {p2, v0}, Lo/ﺧ;->ʼ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "null northeast"

    invoke-static {p3, v0}, Lo/ﺧ;->ʼ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p3, Lcom/google/android/gms/maps/model/LatLng;->Jc:D

    iget-wide v2, p2, Lcom/google/android/gms/maps/model/LatLng;->Jc:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "southern latitude exceeds northern latitude (%s > %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p2, Lcom/google/android/gms/maps/model/LatLng;->Jc:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-wide v3, p3, Lcom/google/android/gms/maps/model/LatLng;->Jc:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lo/ﺧ;->ˊ(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->BH:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->Je:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->Jf:Lcom/google/android/gms/maps/model/LatLng;

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
    instance-of v0, p1, Lcom/google/android/gms/maps/model/LatLngBounds;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object v2, v0

    iget-object v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->Je:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, v2, Lcom/google/android/gms/maps/model/LatLngBounds;->Je:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->Jf:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, v2, Lcom/google/android/gms/maps/model/LatLngBounds;->Jf:Lcom/google/android/gms/maps/model/LatLng;

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

    iget-object v1, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->Je:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->Jf:Lcom/google/android/gms/maps/model/LatLng;

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

    const-string v1, "southwest"

    iget-object v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->Je:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1, v2}, Lo/ﺟ$if;->ˊ(Ljava/lang/String;Ljava/lang/Object;)Lo/ﺟ$if;

    move-result-object v0

    const-string v1, "northeast"

    iget-object v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->Jf:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1, v2}, Lo/ﺟ$if;->ˊ(Ljava/lang/String;Ljava/lang/Object;)Lo/ﺟ$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/ﺟ$if;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-static {}, Lo/ch;->ᗀ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lo/ef;->ˊ(Lcom/google/android/gms/maps/model/LatLngBounds;Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lo/ee;->ˊ(Lcom/google/android/gms/maps/model/LatLngBounds;Landroid/os/Parcel;I)V

    :goto_0
    return-void
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->BH:I

    return v0
.end method
