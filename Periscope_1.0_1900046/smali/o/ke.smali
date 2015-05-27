.class abstract Lo/ke;
.super Lo/lk;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 302
    invoke-direct {p0, p1, p2, p3}, Lo/lk;-><init>(Ljava/lang/String;II)V

    .line 303
    return-void
.end method


# virtual methods
.method public al()Lo/lu;
    .locals 5

    .line 306
    new-instance v0, Lo/ks;

    iget-object v1, p0, Lo/ke;->Pz:Ljava/util/Vector;

    iget v2, p0, Lo/ke;->NS:I

    iget v3, p0, Lo/ke;->NR:I

    iget-object v4, p0, Lo/ke;->NU:Ljava/util/Hashtable;

    invoke-direct {v0, v1, v2, v3, v4}, Lo/ks;-><init>(Ljava/util/Vector;IILjava/util/Hashtable;)V

    return-object v0
.end method
