.class Lo/ko;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private response:Ljava/lang/String;

.field private statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p2}, Lo/ko;->ﹸ(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p1}, Lo/ko;->setStatusCode(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public aq()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/ko;->response:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 16
    iget v0, p0, Lo/ko;->statusCode:I

    return v0
.end method

.method public setStatusCode(I)V
    .locals 0

    .line 20
    iput p1, p0, Lo/ko;->statusCode:I

    .line 21
    return-void
.end method

.method public ﹸ(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lo/ko;->response:Ljava/lang/String;

    .line 13
    return-void
.end method
