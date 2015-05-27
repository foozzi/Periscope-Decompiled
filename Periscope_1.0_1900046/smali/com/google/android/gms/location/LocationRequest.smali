.class public final Lcom/google/android/gms/location/LocationRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lo/bh;


# instance fields
.field private final BH:I

.field public Hk:J

.field public Hl:J

.field public Hm:Z

.field public Hn:J

.field public Ho:I

.field public Hp:F

.field public Hq:J

.field public ﭔ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/bh;

    invoke-direct {v0}, Lo/bh;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lo/bh;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->BH:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->ﭔ:I

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->Hk:J

    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->Hl:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->Hm:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->Hn:J

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->Ho:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->Hp:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->Hq:J

    return-void
.end method

.method public constructor <init>(IIJJZJIFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->BH:I

    iput p2, p0, Lcom/google/android/gms/location/LocationRequest;->ﭔ:I

    iput-wide p3, p0, Lcom/google/android/gms/location/LocationRequest;->Hk:J

    iput-wide p5, p0, Lcom/google/android/gms/location/LocationRequest;->Hl:J

    iput-boolean p7, p0, Lcom/google/android/gms/location/LocationRequest;->Hm:Z

    iput-wide p8, p0, Lcom/google/android/gms/location/LocationRequest;->Hn:J

    iput p10, p0, Lcom/google/android/gms/location/LocationRequest;->Ho:I

    iput p11, p0, Lcom/google/android/gms/location/LocationRequest;->Hp:F

    iput-wide p12, p0, Lcom/google/android/gms/location/LocationRequest;->Hq:J

    return-void
.end method

.method private static ՙ(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid displacement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static ᐣ(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static ﯿ(I)V
    .locals 3

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    goto :goto_1

    :goto_0
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static ﹹ(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "PRIORITY_HIGH_ACCURACY"

    return-object v0

    :pswitch_1
    const-string v0, "PRIORITY_BALANCED_POWER_ACCURACY"

    return-object v0

    :pswitch_2
    const-string v0, "PRIORITY_LOW_POWER"

    return-object v0

    :pswitch_3
    const-string v0, "PRIORITY_NO_POWER"

    return-object v0

    :goto_0
    :pswitch_4
    const-string v0, "???"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/location/LocationRequest;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/location/LocationRequest;

    move-object v4, v0

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->ﭔ:I

    iget v1, v4, Lcom/google/android/gms/location/LocationRequest;->ﭔ:I

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->Hk:J

    iget-wide v2, v4, Lcom/google/android/gms/location/LocationRequest;->Hk:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->Hl:J

    iget-wide v2, v4, Lcom/google/android/gms/location/LocationRequest;->Hl:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->Hm:Z

    iget-boolean v1, v4, Lcom/google/android/gms/location/LocationRequest;->Hm:Z

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->Hn:J

    iget-wide v2, v4, Lcom/google/android/gms/location/LocationRequest;->Hn:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->Ho:I

    iget v1, v4, Lcom/google/android/gms/location/LocationRequest;->Ho:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->Hp:F

    iget v1, v4, Lcom/google/android/gms/location/LocationRequest;->Hp:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->ﭔ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->Hk:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->Hl:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/location/LocationRequest;->Hm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->Hn:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->Ho:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->Hp:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/ﺟ;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Request["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->ﭔ:I

    invoke-static {v1}, Lcom/google/android/gms/location/LocationRequest;->ﹹ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->ﭔ:I

    const/16 v1, 0x69

    if-eq v0, v1, :cond_0

    const-string v0, " requested="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->Hk:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, " fastest="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->Hl:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->Hq:J

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->Hk:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const-string v0, " maxWait="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->Hq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->Hn:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->Hn:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v5, v0, v2

    const-string v0, " expireIn="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->Ho:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    const-string v0, " num="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->Ho:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v0, 0x5d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/bh;->ˊ(Lcom/google/android/gms/location/LocationRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public ʹ(F)Lcom/google/android/gms/location/LocationRequest;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/location/LocationRequest;->ՙ(F)V

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->Hp:F

    return-object p0
.end method

.method public ۥ(J)Lcom/google/android/gms/location/LocationRequest;
    .locals 4

    invoke-static {p1, p2}, Lcom/google/android/gms/location/LocationRequest;->ᐣ(J)V

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->Hk:J

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->Hm:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->Hk:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->Hl:J

    :cond_0
    return-object p0
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->BH:I

    return v0
.end method

.method public ᐠ(J)Lcom/google/android/gms/location/LocationRequest;
    .locals 1

    invoke-static {p1, p2}, Lcom/google/android/gms/location/LocationRequest;->ᐣ(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->Hm:Z

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->Hl:J

    return-object p0
.end method

.method public ﯧ(I)Lcom/google/android/gms/location/LocationRequest;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/location/LocationRequest;->ﯿ(I)V

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->ﭔ:I

    return-object p0
.end method
