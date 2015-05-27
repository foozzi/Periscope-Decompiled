.class abstract Lo/kg;
.super Lo/lu;
.source ""


# instance fields
.field protected volatile NI:I

.field protected volatile NJ:I

.field protected volatile NK:I


# direct methods
.method constructor <init>(Ljava/util/Vector;IIIIILjava/util/Hashtable;)V
    .locals 1

    .line 340
    invoke-direct {p0, p1, p2, p3, p7}, Lo/lu;-><init>(Ljava/util/Vector;IILjava/util/Hashtable;)V

    .line 327
    const/4 v0, 0x5

    iput v0, p0, Lo/kg;->NI:I

    .line 328
    const/16 v0, 0x1388

    iput v0, p0, Lo/kg;->NJ:I

    .line 329
    const/4 v0, 0x0

    iput v0, p0, Lo/kg;->NK:I

    .line 341
    iput p4, p0, Lo/kg;->NI:I

    .line 342
    iput p5, p0, Lo/kg;->NJ:I

    .line 343
    iput p6, p0, Lo/kg;->NK:I

    .line 344
    return-void
.end method
