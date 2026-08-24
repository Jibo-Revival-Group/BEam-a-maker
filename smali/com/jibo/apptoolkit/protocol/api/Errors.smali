.class public Lcom/jibo/apptoolkit/protocol/api/Errors;
.super Ljava/lang/Object;
.source "Errors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jibo/apptoolkit/protocol/api/Errors$ResponseError;
    }
.end annotation


# static fields
.field public static final ERROR_CERTIFICATES_NOT_DEPLOYED:Ljava/lang/String; = "Certificate not deployed"


# instance fields
.field private errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jibo/apptoolkit/protocol/api/Errors$ResponseError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jibo/apptoolkit/protocol/api/Errors$ResponseError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/jibo/apptoolkit/protocol/api/Errors;->errors:Ljava/util/List;

    return-object v0
.end method
