.class public abstract Lo/ane;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ʿ(JJ)Lo/ane;
    .locals 3

    .line 11
    new-instance v0, Lo/amy;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v0, v1, v2}, Lo/amy;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    return-object v0
.end method


# virtual methods
.method public abstract BO()Ljava/util/Date;
.end method

.method public abstract BP()Ljava/util/Date;
.end method

.method public ˊ(Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    .line 22
    invoke-virtual {p0}, Lo/ane;->BP()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lo/ane;->BO()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method
