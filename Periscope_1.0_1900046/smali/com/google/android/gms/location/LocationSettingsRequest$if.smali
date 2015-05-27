.class public final Lcom/google/android/gms/location/LocationSettingsRequest$if;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/LocationSettingsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private Hv:Z

.field private Hw:Z

.field private final Hx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lcom/google/android/gms/location/LocationRequest;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest$if;->Hx:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest$if;->Hv:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest$if;->Hw:Z

    return-void
.end method


# virtual methods
.method public ˋ(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$if;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest$if;->Hx:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public Λ()Lcom/google/android/gms/location/LocationSettingsRequest;
    .locals 5

    new-instance v0, Lcom/google/android/gms/location/LocationSettingsRequest;

    iget-object v1, p0, Lcom/google/android/gms/location/LocationSettingsRequest$if;->Hx:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationSettingsRequest$if;->Hv:Z

    iget-boolean v3, p0, Lcom/google/android/gms/location/LocationSettingsRequest$if;->Hw:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/location/LocationSettingsRequest;-><init>(Ljava/util/List;ZZLcom/google/android/gms/location/LocationSettingsRequest$1;)V

    return-object v0
.end method
