.class public Lo/yf;
.super Lretrofit/mime/TypedString;
.source ""


# instance fields
.field private final bqe:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lretrofit/mime/TypedString;-><init>(Ljava/lang/String;)V

    .line 11
    iput-object p2, p0, Lo/yf;->bqe:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public fileName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lo/yf;->bqe:Ljava/lang/String;

    return-object v0
.end method
