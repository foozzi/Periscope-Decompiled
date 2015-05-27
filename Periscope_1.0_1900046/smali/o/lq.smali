.class abstract Lo/lq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected PI:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p0, p1}, Lo/lq;->ỉ(I)V

    .line 10
    return-void
.end method


# virtual methods
.method public getInterval()I
    .locals 1

    .line 12
    iget v0, p0, Lo/lq;->PI:I

    return v0
.end method

.method public abstract run()V
.end method

.method public ỉ(I)V
    .locals 0

    .line 15
    iput p1, p0, Lo/lq;->PI:I

    .line 16
    return-void
.end method
