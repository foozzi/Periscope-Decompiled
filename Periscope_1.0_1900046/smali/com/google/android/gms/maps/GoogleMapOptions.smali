.class public final Lcom/google/android/gms/maps/GoogleMapOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lo/ey;


# instance fields
.field private final BH:I

.field private HW:Ljava/lang/Boolean;

.field private HX:Ljava/lang/Boolean;

.field private HY:I

.field private HZ:Lcom/google/android/gms/maps/model/CameraPosition;

.field private Ia:Ljava/lang/Boolean;

.field private Ib:Ljava/lang/Boolean;

.field private Ic:Ljava/lang/Boolean;

.field private Id:Ljava/lang/Boolean;

.field private Ie:Ljava/lang/Boolean;

.field private If:Ljava/lang/Boolean;

.field private Ig:Ljava/lang/Boolean;

.field private Ih:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/ey;

    invoke-direct {v0}, Lo/ey;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/GoogleMapOptions;->CREATOR:Lo/ey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->HY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->BH:I

    return-void
.end method

.method public constructor <init>(IBBILcom/google/android/gms/maps/model/CameraPosition;BBBBBBBB)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->HY:I

    iput p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->BH:I

    invoke-static {p2}, Lo/cg;->ʻ(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->HW:Ljava/lang/Boolean;

    invoke-static {p3}, Lo/cg;->ʻ(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->HX:Ljava/lang/Boolean;

    iput p4, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->HY:I

    iput-object p5, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->HZ:Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-static {p6}, Lo/cg;->ʻ(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ia:Ljava/lang/Boolean;

    invoke-static {p7}, Lo/cg;->ʻ(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ib:Ljava/lang/Boolean;

    invoke-static {p8}, Lo/cg;->ʻ(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ic:Ljava/lang/Boolean;

    invoke-static {p9}, Lo/cg;->ʻ(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Id:Ljava/lang/Boolean;

    invoke-static {p10}, Lo/cg;->ʻ(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ie:Ljava/lang/Boolean;

    invoke-static {p11}, Lo/cg;->ʻ(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->If:Ljava/lang/Boolean;

    invoke-static {p12}, Lo/cg;->ʻ(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ig:Ljava/lang/Boolean;

    invoke-static {p13}, Lo/cg;->ʻ(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ih:Ljava/lang/Boolean;

    return-void
.end method

.method public static ˋ(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 5

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lo/ห$ˊ;->MapAttrs:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    sget v0, Lo/ห$ˊ;->MapAttrs_mapType:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lo/ห$ˊ;->MapAttrs_mapType:I

    const/4 v1, -0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->ŗ(I)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_1
    sget v0, Lo/ห$ˊ;->MapAttrs_zOrderOnTop:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lo/ห$ˊ;->MapAttrs_zOrderOnTop:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->ᗮ(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_2
    sget v0, Lo/ห$ˊ;->MapAttrs_useViewLifecycle:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lo/ห$ˊ;->MapAttrs_useViewLifecycle:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->ᴶ(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_3
    sget v0, Lo/ห$ˊ;->MapAttrs_uiCompass:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lo/ห$ˊ;->MapAttrs_uiCompass:I

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->ᵀ(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_4
    sget v0, Lo/ห$ˊ;->MapAttrs_uiRotateGestures:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lo/ห$ˊ;->MapAttrs_uiRotateGestures:I

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->ı(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_5
    sget v0, Lo/ห$ˊ;->MapAttrs_uiScrollGestures:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lo/ห$ˊ;->MapAttrs_uiScrollGestures:I

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->ᵋ(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_6
    sget v0, Lo/ห$ˊ;->MapAttrs_uiTiltGestures:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Lo/ห$ˊ;->MapAttrs_uiTiltGestures:I

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->ﾟ(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_7
    sget v0, Lo/ห$ˊ;->MapAttrs_uiZoomGestures:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Lo/ห$ˊ;->MapAttrs_uiZoomGestures:I

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->ᵗ(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_8
    sget v0, Lo/ห$ˊ;->MapAttrs_uiZoomControls:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lo/ห$ˊ;->MapAttrs_uiZoomControls:I

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->ᴸ(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_9
    sget v0, Lo/ห$ˊ;->MapAttrs_liteMode:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a

    sget v0, Lo/ห$ˊ;->MapAttrs_liteMode:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->ǃ(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_a
    sget v0, Lo/ห$ˊ;->MapAttrs_uiMapToolbar:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    sget v0, Lo/ห$ˊ;->MapAttrs_uiMapToolbar:I

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/GoogleMapOptions;->ʲ(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_b
    invoke-static {p0, p1}, Lcom/google/android/gms/maps/model/CameraPosition;->ˎ(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMapOptions;->ˊ(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-static {}, Lo/ch;->ᗀ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lo/ez;->ˊ(Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lo/ey;->ˊ(Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Parcel;I)V

    :goto_0
    return-void
.end method

.method public ı(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->If:Ljava/lang/Boolean;

    return-object p0
.end method

.method public ŗ(I)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->HY:I

    return-object p0
.end method

.method public ǃ(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ig:Ljava/lang/Boolean;

    return-object p0
.end method

.method public ʲ(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ih:Ljava/lang/Boolean;

    return-object p0
.end method

.method public ˊ(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->HZ:Lcom/google/android/gms/maps/model/CameraPosition;

    return-object p0
.end method

.method public Ҭ()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->HW:Ljava/lang/Boolean;

    invoke-static {v0}, Lo/cg;->ˋ(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public ӟ()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->HX:Ljava/lang/Boolean;

    invoke-static {v0}, Lo/cg;->ˋ(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public Ӵ()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ia:Ljava/lang/Boolean;

    invoke-static {v0}, Lo/cg;->ˋ(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public Ԇ()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ib:Ljava/lang/Boolean;

    invoke-static {v0}, Lo/cg;->ˋ(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public Ն()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ic:Ljava/lang/Boolean;

    invoke-static {v0}, Lo/cg;->ˋ(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public յ()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Id:Ljava/lang/Boolean;

    invoke-static {v0}, Lo/cg;->ˋ(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public ո()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ie:Ljava/lang/Boolean;

    invoke-static {v0}, Lo/cg;->ˋ(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public ս()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->If:Ljava/lang/Boolean;

    invoke-static {v0}, Lo/cg;->ˋ(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public פ()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ig:Ljava/lang/Boolean;

    invoke-static {v0}, Lo/cg;->ˋ(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public ק()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ih:Ljava/lang/Boolean;

    invoke-static {v0}, Lo/cg;->ˋ(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public ת()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->HY:I

    return v0
.end method

.method public ث()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->HZ:Lcom/google/android/gms/maps/model/CameraPosition;

    return-object v0
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->BH:I

    return v0
.end method

.method public ᗮ(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->HW:Ljava/lang/Boolean;

    return-object p0
.end method

.method public ᴶ(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->HX:Ljava/lang/Boolean;

    return-object p0
.end method

.method public ᴸ(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ia:Ljava/lang/Boolean;

    return-object p0
.end method

.method public ᵀ(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ib:Ljava/lang/Boolean;

    return-object p0
.end method

.method public ᵋ(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ic:Ljava/lang/Boolean;

    return-object p0
.end method

.method public ᵗ(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Id:Ljava/lang/Boolean;

    return-object p0
.end method

.method public ﾟ(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->Ie:Ljava/lang/Boolean;

    return-object p0
.end method
