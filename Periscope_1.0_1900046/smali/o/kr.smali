.class Lo/kr;
.super Lo/ke;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lo/ke;-><init>(Ljava/lang/String;II)V

    .line 8
    return-void
.end method


# virtual methods
.method public ar()V
    .locals 1

    .line 11
    iget-object v0, p0, Lo/kr;->Pz:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 12
    return-void
.end method
