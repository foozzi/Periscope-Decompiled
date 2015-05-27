.class public final Lcom/google/android/gms/maps/model/MarkerOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lo/ei;


# instance fields
.field private final BH:I

.field private IT:Z

.field private Iu:Lcom/google/android/gms/maps/model/LatLng;

.field private Ja:F

.field private Jb:F

.field private Jh:Ljava/lang/String;

.field private Ji:Ljava/lang/String;

.field private Jj:Lo/df;

.field private Jk:Z

.field private Jl:Z

.field private Jm:F

.field private Jn:F

.field private Jo:F

.field private mAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/ei;

    invoke-direct {v0}, Lo/ei;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/MarkerOptions;->CREATOR:Lo/ei;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ja:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jb:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->IT:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jl:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jm:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jn:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jo:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->BH:I

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;FFZZZFFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ja:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jb:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->IT:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jl:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jm:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jn:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jo:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->BH:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Iu:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jh:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ji:Ljava/lang/String;

    if-nez p5, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lo/df;

    invoke-static {p5}, Lo/ﱟ$if;->ʼ(Landroid/os/IBinder;)Lo/ﱟ;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/df;-><init>(Lo/ﱟ;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jj:Lo/df;

    iput p6, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ja:F

    iput p7, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jb:F

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jk:Z

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->IT:Z

    iput-boolean p10, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jl:Z

    iput p11, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jm:F

    iput p12, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jn:F

    iput p13, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jo:F

    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jm:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jh:Ljava/lang/String;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->IT:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-static {}, Lo/ch;->ᗀ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lo/ej;->ˊ(Lcom/google/android/gms/maps/model/MarkerOptions;Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lo/ei;->ˊ(Lcom/google/android/gms/maps/model/MarkerOptions;Landroid/os/Parcel;I)V

    :goto_0
    return-void
.end method

.method public ˊ(Lo/df;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jj:Lo/df;

    return-object p0
.end method

.method public ͺ(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Iu:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public ے()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Iu:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->BH:I

    return v0
.end method

.method public ヮ()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ja:F

    return v0
.end method

.method public ヶ()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jb:F

    return v0
.end method

.method public 丫()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jj:Lo/df;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jj:Lo/df;

    invoke-virtual {v0}, Lo/df;->п()Lo/ﱟ;

    move-result-object v0

    invoke-interface {v0}, Lo/ﱟ;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public 乁()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Ji:Ljava/lang/String;

    return-object v0
.end method

.method public 爫()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jk:Z

    return v0
.end method

.method public ﬤ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jl:Z

    return v0
.end method

.method public טּ()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jn:F

    return v0
.end method

.method public סּ()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Jo:F

    return v0
.end method
