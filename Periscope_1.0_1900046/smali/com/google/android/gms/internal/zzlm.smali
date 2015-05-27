.class public final Lcom/google/android/gms/internal/zzlm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lo/ﾒ;


# instance fields
.field public final BH:I

.field private final Fo:J

.field private Fp:Ljava/lang/String;

.field private final Fq:Ljava/lang/String;

.field private final Fr:Ljava/lang/String;

.field private final Fs:Ljava/lang/String;

.field private final Ft:Ljava/lang/String;

.field private final Fu:Ljava/lang/String;

.field private final Fv:J

.field private Fw:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/ﾒ;

    invoke-direct {v0}, Lo/ﾒ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzlm;->CREATOR:Lo/ﾒ;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzlm;->BH:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzlm;->Fo:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzlm;->Fp:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzlm;->Fq:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzlm;->Fr:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzlm;->Fs:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzlm;->Ft:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzlm;->Fw:J

    iput-object p9, p0, Lcom/google/android/gms/internal/zzlm;->Fu:Ljava/lang/String;

    iput-wide p10, p0, Lcom/google/android/gms/internal/zzlm;->Fv:J

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 12

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    const/4 v1, 0x1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/zzlm;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzlm;->Fo:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/ﾒ;->ˊ(Lcom/google/android/gms/internal/zzlm;Landroid/os/Parcel;I)V

    return-void
.end method

.method public 乀()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlm;->Fp:Ljava/lang/String;

    return-object v0
.end method

.method public 宀()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlm;->Fq:Ljava/lang/String;

    return-object v0
.end method

.method public ﬥ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlm;->Fr:Ljava/lang/String;

    return-object v0
.end method

.method public צּ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlm;->Fs:Ljava/lang/String;

    return-object v0
.end method

.method public בֿ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlm;->Ft:Ljava/lang/String;

    return-object v0
.end method

.method public ﭒ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlm;->Fu:Ljava/lang/String;

    return-object v0
.end method

.method public ﭞ()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzlm;->Fv:J

    return-wide v0
.end method
