.class Lo/agr;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bDR:F

.field private bDS:J

.field private bDT:I

.field public final bxr:Lo/ant;

.field public final id:J


# direct methods
.method public constructor <init>(Lo/ant;J)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lo/agr;->bxr:Lo/ant;

    .line 18
    iput-wide p2, p0, Lo/agr;->id:J

    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lo/agr;->bDR:F

    .line 20
    const-wide/16 v0, 0x1194

    iput-wide v0, p0, Lo/agr;->bDS:J

    .line 21
    return-void
.end method


# virtual methods
.method public zA()I
    .locals 1

    .line 40
    iget v0, p0, Lo/agr;->bDT:I

    return v0
.end method

.method public zy()F
    .locals 1

    .line 24
    iget v0, p0, Lo/agr;->bDR:F

    return v0
.end method

.method public zz()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lo/agr;->bDS:J

    return-wide v0
.end method

.method public ˡ(F)V
    .locals 0

    .line 28
    iput p1, p0, Lo/agr;->bDR:F

    .line 29
    return-void
.end method

.method public ˢ(J)V
    .locals 0

    .line 36
    iput-wide p1, p0, Lo/agr;->bDS:J

    .line 37
    return-void
.end method

.method public Υ(I)V
    .locals 0

    .line 44
    iput p1, p0, Lo/agr;->bDT:I

    .line 45
    return-void
.end method
